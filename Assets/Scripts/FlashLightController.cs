using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class FlashLightController : MonoBehaviour
{
    public bool flashlightIsOn = false;
    public Light spotLight;
    public Animator anim;
    public MeshRenderer flashlightMesh;


    public RotateWithCamera rotator;
    public void RaiseFlashlight()
    {
        flashlightMesh.enabled = true;
        spotLight.enabled = true;
        rotator.active = true;
        flashlightIsOn = true;
        anim.SetTrigger("flashlightup");        
    }

    public void LowerFlashlight()
    {
        flashlightMesh.enabled = false;
        spotLight.enabled = false;
        rotator.active = false;
        flashlightIsOn = false;
        anim.SetTrigger("flashlightdown");
    }
}
