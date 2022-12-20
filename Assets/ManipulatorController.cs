using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ManipulatorController : MonoBehaviour
{
    public GameManager gameManager;

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent<Interactable>(out Interactable interactable))
        {
            if (!interactable.canInteract)
            { 
                interactable.canInteract = true;
                gameManager.currentInteractable = interactable;

                if (interactable.pickup)
                {
                    gameManager.crosshair.sprite = gameManager.crosshairHand;
                }
                else if (interactable.inspect)
                {
                    gameManager.crosshair.sprite = gameManager.crosshairEye;
                }

                gameManager.crosshair.transform.DOScale(Vector3.one * 0.6f, 0.2f);
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.TryGetComponent<Interactable>(out Interactable interactable))
        {
            if (interactable.canInteract)
            {
                interactable.canInteract = false;
                gameManager.currentInteractable = null;
                gameManager.crosshair.sprite = gameManager.crosshairMain;
                gameManager.crosshair.transform.DOScale(Vector3.one * 0.1f, 0.2f);
            }
        }
    }
}
