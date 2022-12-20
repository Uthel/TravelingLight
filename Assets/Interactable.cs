using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour
{
    public GameManager gameManager;  // eventually switch to Inventory Manager
    public bool pickup;
    public bool inspect;
    public string interactMessage;
    public bool canInteract = false;
    public AudioClip voiceClip;

    public void Interact()
    {
        if (pickup)
        {           
            gameManager.PickupItem(interactMessage);
            Destroy(gameObject);            
        }
        else if (inspect)
        {
            gameManager.InspectItem(interactMessage, voiceClip);
        }
    }
}
