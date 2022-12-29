using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using KinematicCharacterController;

public class StandForcer : MonoBehaviour
{
    public CrouchController crouchControl;
    private void OnTriggerEnter(Collider other)
    {
        crouchControl.tubeMode = false;
        crouchControl.UnCrouch();
        
    }

    private void OnTriggerExit(Collider other)
    {
        crouchControl.Crouch();
        crouchControl.tubeMode = true;
        

    }
}
