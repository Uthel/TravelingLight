using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using DG.Tweening;
using UnityEngine.UI;


public class GameManager : MonoBehaviour
{
    public FlashLightController flashlightControl;
    public LayerMask mask;
    public PlayerManager player;
    public Interactable currentInteractable;
    public CanvasGroup gameMessageGroup;
    public TextMeshProUGUI gameMessageTMPro;
    public Sprite crosshairMain;
    public Sprite crosshairHand;
    public Sprite crosshairEye;
    public Image crosshair;
    public AudioSource voicePlayer;

    public bool inspecting;

    private void Update()
    {
        ProcessInputs();
        ProcessRaycasts();
    }

    public void PickupItem(string message)
    {
        gameMessageTMPro.text = message;
        crosshair.sprite = crosshairMain;
        crosshair.transform.DOScale(Vector3.one * 0.1f, 0.2f);
        currentInteractable = null;
        DOTween.Sequence()
            .Append(gameMessageGroup.DOFade(1, 0.3f))
            .Join(gameMessageGroup.transform.DOScale(Vector3.one * 1.3f, 0.3f).SetEase(Ease.OutBounce))
            .AppendInterval(2)
            .Append(gameMessageGroup.DOFade(0, 0.5f))
            .Join(gameMessageGroup.transform.DOScale(Vector3.one, 0.5f))
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
