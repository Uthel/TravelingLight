using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateWithCamera : MonoBehaviour
{
    public Transform camTransform;
    public bool active = false;

    private void LateUpdate()
    {
                if (active)
            transform.rotation = camTransform.rotation;


    }
}
