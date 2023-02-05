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

                if (interactable.pickup || interactable.openClose || interactable.openCloseRotate || interactable.cutscene)
                {
                    gameManager.crosshair.sprite = gameManager.crosshairHand;
                    gameManager.crosshair.transform.DOScale(Vector3.one * 0.7f, 0.2f);
                }
                else if (interactable.inspect)
                {
                    gameManager.crosshair.sprite = gameManager.crosshairEye;
                    Vector3 scaleAmount = new Vector3(0.8f, 0.6f, 0.6f);
                    gameManager.crosshair.transform.DOScale(scaleAmount, 0.2f);
                }
            }
            else
            {
                if (interactable.pickup || interactable.openClose || interactable.openCloseRotate)
                {
                    gameManager.crosshair.sprite = gameManager.crosshairHand;
                    gameManager.crosshair.transform.DOScale(Vector3.one * 0.7f, 0.2f);
                }
                else if (interactable.inspect)
                {
                    gameManager.crosshair.sprite = gameManager.crosshairEye;
                    Vector3 scaleAmount = new Vector3(0.8f, 0.6f, 0.6f);
                    gameManager.crosshair.transform.DOScale(scaleAmount, 0.2f);
                }
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
