using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LegWalkController : MonoBehaviour
{
    public Animator walkAnim;
    public float vert;
    public float horz;

    private void Update()
    {
        vert = Input.GetAxis("Vertical");
        horz = Input.GetAxis("Horizontal");
        walkAnim.SetFloat("Walk", vert);
        walkAnim.SetFloat("Strafe", horz);
    }


}
