using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OrbController : MonoBehaviour
{
    public ConstantForce force;
    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("DownTrigger"))
        {
            force.force = new Vector3(0, -2, 0);
        }

        else if (other.CompareTag("UpTrigger"))
        {
            force.force = new Vector3(0, 2, 0);
        }
    }
}
