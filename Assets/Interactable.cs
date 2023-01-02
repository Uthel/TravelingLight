using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour
{
    public GameManager gameManager;  // eventually switch to Inventory Manager
    public bool pickup;
    public bool inspect;
    public bool openClose;
    public bool openCloseRotate;
    public BoxCollider hiddenItemCollider;
    public string interactMessage;
    public bool canInteract = false;
    public AudioClip voiceClip;

    public GameObject inventoryItemToEnable;

    public Transform transformToOpenClose;
    public bool isOpen = false;
    public Vector3 openPosition;
    public Vector3 closePosition;
    public Vector3 openRotation;
    public Vector3 closeRotation;


    public void Start()
    {
        if (openClose)
        {
            closePosition = transformToOpenClose.localPosition;
        }
        else if (openCloseRotate)
        {
            closeRotation = transformToOpenClose.localEulerAngles;
        }
    }
    public void Interact()
    {
        if (pickup)
        {           
            gameManager.PickupItem(interactMessage);
            inventoryItemToEnable.SetActive(true);
            Destroy(gameObject);            
        }
        else if (inspect)
        {
            gameManager.InspectItem(interactMessage, voiceClip);
        }
        else if (openClose)
        {
            if (!isOpen)
            {
                gameManager.OpenContainer(transformToOpenClose, openPosition, this);

                if (hiddenItemCollider != null)
                    hiddenItemCollider.enabled = true;
            }
            else
            {
                gameManager.CloseContainer(transformToOpenClose, closePosition, this);

                if (hiddenItemCollider != null)
                    hiddenItemCollider.enabled = false;
            }
        }
        else if (openCloseRotate)
        {
            if (!isOpen)
            {
                gameManager.OpenContainerRotate(transformToOpenClose, openRotation, this);

                if (hiddenItemCollider != null)
                    hiddenItemCollider.enabled = true;
            }
            else
            {
                gameManager.CloseContainerRotate(transformToOpenClose, closeRotation, this);

                if (hiddenItemCollider != null)
                    hiddenItemCollider.enabled = false;
            }
        }
    }
}
