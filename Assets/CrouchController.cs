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
        public FullBodyWalkController martinAnimController;

        public float currentHeight;
        public float currentCamPosition;

        public Transform camFollowTransform;

        public bool tubeMode = false;
        public UIManager uiManager;
        public void Crouch()
        {
            if (!uiManager.isPaused)
            {
                martinAnimController.CrouchAnim();
                DOTween.To(() => currentHeight, x => currentHeight = x, 0.7f, 0.5f)
                    .OnUpdate(() =>
                     {
                         kinCon.SetCapsuleDimensions(kinCon.CapsuleRadius, currentHeight, kinCon.CapsuleYOffset);
                     });

                DOTween.To(() => currentCamPosition, x => currentCamPosition = x, 1.3f, 0.5f)
                    .OnUpdate(() =>
                    {
                        camFollowTransform.localPosition = new Vector3(camFollowTransform.localPosition.x, currentCamPosition, camFollowTransform.localPosition.z);
                    });

                charControl.MaxStableMoveSpeed = 1.3f;
            }
        }

        public void UnCrouch()
        {
            if (!tubeMode)
            {
                martinAnimController.UnCrouchAnim();
                DOTween.To(() => currentHeight, x => currentHeight = x, 2, 0.5f)
                    .OnUpdate(() =>
                            {
                                kinCon.SetCapsuleDimensions(kinCon.CapsuleRadius, currentHeight, kinCon.CapsuleYOffset);
                            });

                DOTween.To(() => currentCamPosition, x => currentCamPosition = x, 1.632f, 0.5f)
                    .OnUpdate(() =>
                            {
                                camFollowTransform.localPosition = new Vector3(camFollowTransform.localPosition.x, currentCamPosition, camFollowTransform.localPosition.z);
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

