using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookController : MonoBehaviour
{
    public Transform headbone;
    public Transform player;

    private void Update()
    {
        
        headbone.LookAt(player);
        //headbone.rotation.SetFromToRotation(transform.right, transform.forward);
    }
}
