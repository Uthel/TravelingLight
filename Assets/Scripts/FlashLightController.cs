using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class FlashLightController : MonoBehaviour
{
    public bool flashlightIsOn = false;
    public Light spotLight;
    public Animator anim;
    public void RaiseFlashlight()
    {
        spotLight.enabled = true;
        flashlightIsOn = true;
        anim.SetTrigger("flashlightup");        
    }

    public void LowerFlashlight()
    {
        spotLight.enabled = false;
        flashlightIsOn = false;
        anim.SetTrigger("flashlightdown");
    }
}
