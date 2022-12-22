using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class DoorController : MonoBehaviour
{
    public Transform door1;
    public Transform door2;

    public InventoryItem requiredKey;

    public bool isMoving;
    public Vector3 door1OpenPos;
    public Vector3 door2OpenPos;
    public Vector3 door1ClosePos;
    public Vector3 door2ClosePos;
    public Transform door1Transform;
    public Transform door2Transform;

    public AudioSource doorSoundSource;
    public AudioClip openSound;
    public AudioClip closeSound;


    private void Start()
    {
        door1ClosePos = door1Transform.localPosition;
        door2ClosePos = door2Transform.localPosition;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (requiredKey == null || requiredKey.isActiveAndEnabled)
        {
            OpenDoor();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        CloseDoor();
    }

    void OpenDoor()
    {
        isMoving = true;
        DOTween.Sequence()
            .Append(door1.DOLocalMove(door1OpenPos, 0.3f).SetEase(Ease.OutSine))
            .Join(door2.DOLocalMove(door2OpenPos, 0.3f).SetEase(Ease.OutSine))
            .AppendCallback(() => { isMoving = false; })
            ;
    }

    void CloseDoor()
    {
        isMoving = true;
        DOTween.Sequence()
            .Append(door1.DOLocalMove(door1ClosePos, 0.3f).SetEase(Ease.InBack))
            .Join(door2.DOLocalMove(door2ClosePos, 0.3f).SetEase(Ease.InBack))
            .AppendCallback(() => { isMoving = false; })
            ;
    }


}
