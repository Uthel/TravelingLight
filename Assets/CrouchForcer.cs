using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace KinematicCharacterController
{
    public class CrouchForcer : MonoBehaviour
    {
        public CrouchController crouchControl;

        private void OnTriggerEnter(Collider other)
        {
            crouchControl.Crouch();
            crouchControl.tubeMode = true;
        }

        private void OnTriggerExit(Collider other)
        {
            crouchControl.UnCrouch();
            //crouchControl.tubeMode = false;
        }
    }
}
