using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FullBodyWalkController : MonoBehaviour
{
    public Animator walkAnim;
    public float vert;
    public float horz;
    public UIManager uiManager;

    private void Update()
    {
        if (!uiManager.isPaused)
        {
            vert = Input.GetAxis("Vertical");
            horz = Input.GetAxis("Horizontal");
            walkAnim.SetFloat("Walk", vert);
            walkAnim.SetFloat("Strafe", horz);
        }
    }

    public void CrouchAnim()
    {
        if (!uiManager.isPaused)
        {
            walkAnim.SetTrigger("Crouch");
            walkAnim.ResetTrigger("UnCrouch");
        }
    }

    public void UnCrouchAnim()
    {
        if (!uiManager.isPaused)
        {
            walkAnim.SetTrigger("UnCrouch");
            walkAnim.ResetTrigger("Crouch");
        }
    }


}
