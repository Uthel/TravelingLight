using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class PistonMover : MonoBehaviour
{
    public float startDelay;
    public float moveDuration;
    private void Start()
    {
        MovePiston();
    }
    void MovePiston()
    {
        DOTween.Sequence()
            .AppendInterval(startDelay)
            .Append(transform.DOLocalMoveX(1.8f, moveDuration).SetEase(Ease.OutSine))
            .Append(transform.DOLocalMoveX(2, moveDuration).SetEase(Ease.OutSine))
            .AppendCallback(() =>
            {
                startDelay = 0;
                MovePiston();                
            });
    }
}
