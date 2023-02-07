using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using DG.Tweening;
using UnityEngine.UI;
using Cinemachine;


public class GameManager : MonoBehaviour
{
    public FlashLightController flashlightControl;
    public LayerMask mask;
    public PlayerManager player;
    public Interactable currentInteractable;
    public CanvasGroup gameMessageGroup;
    public CanvasGroup blackoutGroup;
    public TextMeshProUGUI gameMessageTMPro;
    public Sprite crosshairMain;
    public Sprite crosshairHand;
    public Sprite crosshairEye;
    public Image crosshair;
    public AudioSource voicePlayer;
    public Animator manipulatorAnim;
    public Animator playerAnim;

    public bool inspecting;

    public GrabController grabControl;

    public CamSwapper camSwapper;
    public UIManager uiManager;

    public SkinnedMeshRenderer martinSkin;
    public SkinnedMeshRenderer cutsceneMartinSkin;
    public GameObject cutsceneGlasses;
    public GameObject glasses;
    public GameObject martinModelCutscene;
    public Animator martinCutsceneAnim;
    public GameObject manipulator;
    public MyCharacterController charControl;

    private void Update()
    {
        ProcessInputs();
        ProcessRaycasts();
    }

    public void PickupItem(string message)
    {
        manipulatorAnim.Play("manipinout");
        playerAnim.SetTrigger("Grab");
        //grabControl.Grab(currentInteractable.transform);
        //gameMessageTMPro.text = message;
        crosshair.sprite = crosshairMain;
        crosshair.transform.DOScale(Vector3.one * 0.1f, 0.2f);
        currentInteractable = null;
        //DOTween.Sequence()
        //    .Append(gameMessageGroup.DOFade(1, 0.3f))
        //    .Join(gameMessageGroup.transform.DOScale(Vector3.one * 1.3f, 0.3f).SetEase(Ease.OutBounce))
        //    .AppendInterval(2)
        //    .Append(gameMessageGroup.DOFade(0, 0.5f))
        //    .Join(gameMessageGroup.transform.DOScale(Vector3.one, 0.5f))
        //    ;

    }

    public void StartInGameCutsceneSimple(CinemachineVirtualCamera vCam, Transform martinTransform, AnimationClip martinAnim, Animator secondaryAnimator, AnimationClip secondaryAnimation, float duration)
    {
        uiManager.isPaused = true;
        manipulator.SetActive(false);
        charControl.MaxStableMoveSpeed = 0;

        DOTween.Sequence()
            .Append(blackoutGroup.DOFade(1, 0.3f))
            .AppendCallback(() => 
            { 
                camSwapper.SwapToDesignatedCam(vCam);                
            })
            .AppendCallback(() =>
            {
                SwapCutsceneStuff(martinTransform, martinAnim, secondaryAnimator, secondaryAnimation);
            })
            .AppendInterval(0.1f)

            .Append(blackoutGroup.DOFade(0, 0.3f))
            .AppendInterval(duration)
            .AppendCallback(() =>
            {
                EndInGameCutScene();
            })
            ;
    }

    void SwapCutsceneStuff(Transform martinTransform, AnimationClip martinAnim, Animator secondaryAnimator, AnimationClip secondaryAnimation)
    {
        crosshair.enabled = false;
        martinSkin.enabled = false;
        glasses.SetActive(false);
        cutsceneGlasses.SetActive(true);
        martinModelCutscene.transform.position = martinTransform.position;
        martinModelCutscene.transform.rotation = martinTransform.rotation;
        cutsceneMartinSkin.enabled = true;

        martinCutsceneAnim.Play(martinAnim.name);
        if (secondaryAnimation != null)
        {
            secondaryAnimator.Play(secondaryAnimation.name);
        }
    }

    public void EndInGameCutScene()
    {
        
        DOTween.Sequence()
            .Append(blackoutGroup.DOFade(1, 0.3f))
            .AppendCallback(() => {
                camSwapper.SwapToPlayerCam();
                crosshair.enabled = true;
                martinSkin.enabled = true;
                cutsceneGlasses.SetActive(false);
                glasses.SetActive(true);
                cutsceneMartinSkin.enabled = false;
                manipulator.SetActive(true);
            })
            .AppendInterval(0.1f)

            .Append(blackoutGroup.DOFade(0, 0.3f))
            .OnComplete(() => 
            { 
                uiManager.isPaused = false;
                charControl.MaxStableMoveSpeed = 5;
            })
            ;
    }

    public void InspectItem(string message, AudioClip voiceClip)
    {
        gameMessageTMPro.text = message;

        if (!voicePlayer.isPlaying)
        {
            voicePlayer.clip = voiceClip;
            voicePlayer.Play();
        }
        // make it bounce a little first
        crosshair.sprite = crosshairMain;
        crosshair.transform.DOScale(Vector3.one * 0.1f, 0.2f);
        DOTween.Sequence()
            .Append(gameMessageGroup.DOFade(1, 0.3f))
            .Join(gameMessageGroup.transform.DOScale(Vector3.one * 1.3f, 0.3f).SetEase(Ease.OutBounce))
            .AppendInterval(2)
            .Append(gameMessageGroup.DOFade(0, 0.5f))
            .Join(gameMessageGroup.transform.DOScale(Vector3.one, 0.5f))
            ;
        currentInteractable = null;
    }

    public void OpenContainer(Transform container, Vector3 openPos, Interactable interactable)
    {
        
        //DOTween.KillAll();
        DOTween.Sequence()
            .Append(container.DOLocalMove(openPos, 0.7f).SetEase(Ease.OutSine))
            .OnComplete(() => { interactable.isOpen = true; });
    }

    public void CloseContainer(Transform container, Vector3 closePos, Interactable interactable)
    {
        //DOTween.KillAll();
        DOTween.Sequence()            
            .Append(container.DOLocalMove(closePos, 0.5f))
            .OnComplete(() => { interactable.isOpen = false; });
    }

    public void OpenContainerRotate(Transform container, Vector3 openRot, Interactable interactable)
    {

        //DOTween.KillAll();
        DOTween.Sequence()
            .Append(container.DOLocalRotate(openRot, 0.7f).SetEase(Ease.OutSine))
            .OnComplete(() => { interactable.isOpen = true; });
    }

    public void CloseContainerRotate(Transform container, Vector3 closeRot, Interactable interactable)
    {
        //DOTween.KillAll();
        DOTween.Sequence()
            .Append(container.DOLocalRotate(closeRot, 0.5f))
            .OnComplete(() => { interactable.isOpen = false; });
    }

    void ProcessInputs()
    {
        if (Input.GetMouseButtonDown(0))
        {
            if (currentInteractable != null)
            {
                currentInteractable.Interact();
            }
        }

        if (Input.GetKeyDown(KeyCode.F))
        {

            if (!flashlightControl.flashlightIsOn)
            {
                flashlightControl.RaiseFlashlight();
            }
            else
            {
                flashlightControl.LowerFlashlight();
            }
        }
    }
    void ProcessRaycasts()
    {

    }
}
