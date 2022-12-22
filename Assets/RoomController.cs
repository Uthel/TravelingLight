using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoomController : MonoBehaviour
{
    public GameObject room;


    private void OnTriggerEnter(Collider other)
    {
        room.SetActive(true);
    }

    private void OnTriggerExit(Collider other)
    {
        room.SetActive(false);
    }
}
