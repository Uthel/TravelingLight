using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;



public class GrabController : MonoBehaviour
{
    public Transform grabTransform;
    public Transform resetPos;
    public Transform grabEndPos;
    public Animator animControl;


    public void Grab(Transform target)
    {
        animControl.Play("GrabAnim");
        Vector3 grabPos = target.position + new Vector3(0, 0.1f, 0);
        DOTween.Sequence()
            .Append(grabTransform.DOMove(grabPos, 0.2f).SetEase(Ease.InSine))
            //.AppendInterval(0.05f)

            .Append(grabTransform.DOMove(grabEndPos.position, 0.2f).SetEase(Ease.InSine))
            
            .Append(grabTransform.DOMove(resetPos.position, 0.01f))



            ;

    }
}
