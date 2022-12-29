using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;
using Cinemachine;
using TMPro;

public class UIManager : MonoBehaviour
{
    public CanvasGroup pauseMenuGroup;

    public WipeController wipeControl;

    public bool isPaused = false;

    public CamSwapper camSwapper;
    public CinemachineVirtualCamera pauseCam;
    public GameObject pausePlanet;

    public CanvasGroup inventoryWindow;
    public CanvasGroup aboutWindow;
    public CanvasGroup cardsWindow;
    public CanvasGroup optionsWindow;

    public TextMeshProUGUI buttonInfoText;


    public void OpenPauseMenu()
    {
        //camSwapper.cineBrain.m_DefaultBlend = 
        pauseCam.Priority = 10;
        camSwapper.SwapToMainMenuCam();
        pausePlanet.SetActive(true);
        
        isPaused = true;
        wipeControl.StartTheWipe();
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        DOTween.Sequence()
            .Append(pauseMenuGroup.DOFade(1, 0.6f))
            .AppendCallback(() =>
            {
                pauseMenuGroup.blocksRaycasts = true;
                pauseMenuGroup.interactable = true;

            })
            ;
    }

    public void ClosePauseMenu()
    {
        CloseAllWindows();
        camSwapper.SwapToPlayerCam();
        pauseCam.Priority = 0;
        pausePlanet.SetActive(true);
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        wipeControl.UndoTheWipe();
        pauseMenuGroup.blocksRaycasts = false;
        pauseMenuGroup.interactable = false;
        DOTween.Sequence()
            .Append(pauseMenuGroup.DOFade(0, 0.05f))
            .AppendCallback(() =>
            {
                isPaused = false;
            })
            ;
    }

    public void CloseAllWindows()
    {
        DOTween.KillAll();
        inventoryWindow.interactable = false;
        inventoryWindow.blocksRaycasts = false;
        aboutWindow.interactable = false;
        aboutWindow.blocksRaycasts = false;
        cardsWindow.interactable = false;
        cardsWindow.blocksRaycasts = false;
        optionsWindow.interactable = false;
        optionsWindow.blocksRaycasts = false;

        buttonInfoText.text = " ";

        inventoryWindow.alpha = 0;
        optionsWindow.alpha = 0;
        aboutWindow.alpha = 0;
        cardsWindow.alpha = 0;

    }

    public void OpenInventoryWindow()
    {
        CloseAllWindows();
        inventoryWindow.DOFade(1, 0.5f).OnComplete(() => 
        {
            inventoryWindow.interactable = true;
            inventoryWindow.blocksRaycasts = true;
        });
    }

    public void OpenOptionsWindow()
    {
        CloseAllWindows();
        optionsWindow.DOFade(1, 0.5f).OnComplete(() =>
        {
            optionsWindow.interactable = true;
            optionsWindow.blocksRaycasts = true;
        });
    }

    public void OpenAboutWindow()
    {
        CloseAllWindows();
        aboutWindow.DOFade(1, 0.5f).OnComplete(() =>
        {
            aboutWindow.interactable = true;
            aboutWindow.blocksRaycasts = true;
        });
    }

    public void OpenCardsWindow()
    {
        CloseAllWindows();
        cardsWindow.DOFade(1, 0.5f).OnComplete(() =>
        {
            cardsWindow.interactable = true;
            cardsWindow.blocksRaycasts = true;
        });
    }

    public void Update()
    {
        if (Input.GetKeyDown(KeyCode.P))
        {
            if (!isPaused)
            {                
                OpenPauseMenu();
            }
            else
            {
                ClosePauseMenu();
            }
        }
        //if (Input.GetMouseButtonDown(0))
        //{
        //    if (isPaused)
        //    {
        //        //Cursor.lockState = CursorLockMode.None;
        //        //Cursor.visible = true;
        //    }
        //}
    }
}
