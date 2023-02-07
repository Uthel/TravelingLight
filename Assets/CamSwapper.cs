using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using KinematicCharacterController;

public class CamSwapper : MonoBehaviour
{
    public CinemachineVirtualCamera playerCineCam;
    public CinemachineVirtualCamera pauseCam;

    public CinemachineVirtualCamera[] allVCams;

    public Camera playerControllerCam;
    public Camera cinemachineMasterCam;
    public CinemachineBrain cineBrain;


    public void SwapToDesignatedCam(CinemachineVirtualCamera vCam)
    {

        foreach (CinemachineVirtualCamera vcam in allVCams)
        {
            vcam.Priority = 0;
        }
        vCam.Priority = 10;
        playerControllerCam.enabled = false;
        cinemachineMasterCam.enabled = true;

    }

    public void SwapToMainMenuCam()
    {

        foreach (CinemachineVirtualCamera vcam in allVCams)
        {
            vcam.Priority = 0;
        }
        pauseCam.Priority = 10;
        playerControllerCam.enabled = false;
        cinemachineMasterCam.enabled = true;
    }

    public void SwapToPlayerCam()
    {
        foreach (CinemachineVirtualCamera vcam in allVCams)
        {
            vcam.Priority = 0;
        }
        playerCineCam.Priority = 10;
        playerControllerCam.enabled = true;
        cinemachineMasterCam.enabled = false;
    }

}


