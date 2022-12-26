using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using KinematicCharacterController;

public class CamSwapper : MonoBehaviour
{
    public CinemachineVirtualCamera playerCineCam;
    public CinemachineVirtualCamera stationaryCineCam1;
    public CinemachineVirtualCamera stationaryCineCam2;
    public CinemachineVirtualCamera stationaryCineCam3;

    public Camera playerControllerCam;
    public Camera cinemachineMasterCam;

    public void SwapToCinemachineCam()
    {
        playerControllerCam.enabled = false;
        cinemachineMasterCam.enabled = true;
        stationaryCineCam3.Priority = 0;
        stationaryCineCam2.Priority = 0;
        stationaryCineCam1.Priority = 10;
        playerCineCam.Priority = 0;
    }

    public void SwapToPlayerCam()
    {
        stationaryCineCam2.Priority = 0;
        stationaryCineCam1.Priority = 0;
        playerCineCam.Priority = 10;
        playerControllerCam.enabled = true;
        cinemachineMasterCam.enabled = false;
    }

    public void SwapToSecondCam()
    {
        stationaryCineCam2.Priority = 10;
        stationaryCineCam1.Priority = 0;
        stationaryCineCam3.Priority = 0;
    }

    public void SwapToThirdCam()
    {
        stationaryCineCam2.Priority = 0;
        stationaryCineCam1.Priority = 0;
        stationaryCineCam3.Priority = 10;
    }
}


