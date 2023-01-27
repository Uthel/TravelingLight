using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateWithCamera : MonoBehaviour
{
    public Transform camTransform;


    private void LateUpdate()
    {

            transform.rotation = camTransform.rotation;


    }
}
