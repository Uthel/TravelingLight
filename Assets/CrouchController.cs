using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;


namespace KinematicCharacterController
{
    public class CrouchController : MonoBehaviour

    {
        public KinematicCharacterMotor kinCon;
        public MyCharacterController charControl;

        public float currentHeight;

        public bool tubeMode = false;
        public void Crouch()
        {
            DOTween.To(() => currentHeight, x => currentHeight = x, 0.7f, 0.5f)
                .OnUpdate(() =>
                 {
                     kinCon.SetCapsuleDimensions(kinCon.CapsuleRadius, currentHeight, kinCon.CapsuleYOffset);
                 });
            charControl.MaxStableMoveSpeed = 2;
        }

        public void UnCrouch()
        {
            if (!tubeMode)
            {
                DOTween.To(() => currentHeight, x => currentHeight = x, 2, 0.5f)
                    .OnUpdate(() =>
                            {
                                kinCon.SetCapsuleDimensions(kinCon.CapsuleRadius, currentHeight, kinCon.CapsuleYOffset);
                            });
                charControl.MaxStableMoveSpeed = 5;
            }
        }

        private void Update()
        {
            if (Input.GetKeyDown(KeyCode.LeftControl))
            {
                Crouch();
            }
            if (Input.GetKeyUp(KeyCode.LeftControl))
            {
                UnCrouch();
            }

        }
    }
}

