using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class DoorController : MonoBehaviour
{
    public Transform door1;
    public Transform door2;

    public InventoryItem requiredKey;

    bool isMoving;
    float door1OpenPos = 1.2f;
    float door2OpenPos = -3.2f;
    float door1ClosePos;
    float door2ClosePos;



    private void Start()
    {
        door1ClosePos = door1.localPosition.x;
        door2ClosePos = door2.localPosition.x;
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
            .Append(door1.DOLocalMoveX(door1OpenPos, 0.3f).SetEase(Ease.OutSine))
            .Join(door2.DOLocalMoveX(door2OpenPos, 0.3f).SetEase(Ease.OutSine))
            .AppendCallback(() => { isMoving = false; })
            ;
    }

    void CloseDoor()
    {
        isMoving = true;
        DOTween.Sequence()
            .Append(door1.DOLocalMoveX(door1ClosePos, 0.3f).SetEase(Ease.InBack))
            .Join(door2.DOLocalMoveX(door2ClosePos, 0.3f).SetEase(Ease.InBack))
            .AppendCallback(() => { isMoving = false; })
            ;
    }


}
