using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class UIManager : MonoBehaviour
{
    public CanvasGroup pauseMenuGroup;
    public CanvasGroup aboutMenuGroup;
    public CanvasGroup inventoryMenuGroup;

    public WipeController wipeControl;

    public bool isPaused = false;


    public void OpenPauseMenu()
    {
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
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        wipeControl.UndoTheWipe();
        pauseMenuGroup.blocksRaycasts = false;
        pauseMenuGroup.interactable = false;
        DOTween.Sequence()
            .Append(pauseMenuGroup.DOFade(0, 0.6f))
            .AppendCallback(() =>
            {
                isPaused = false;
            })
            ;
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
