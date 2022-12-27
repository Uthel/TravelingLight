using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class WipeController : MonoBehaviour
{
    public CanvasGroup wipeGroup;
    public Image currentWipeImage;
    public Transform wipeTransform;
    public float wipeTransformY;

    public Sprite wipe1;

    public bool wiping = false;


    private void Start()
    {
        wipeTransformY = 1323;
    }
    public void StartTheWipe()
    {
        if (!wiping)
        {
            wiping = true;
            DOTween.Sequence()
                        .Append(wipeGroup.DOFade(1, 1))
                        .Join(wipeTransform.DOLocalMoveY(1100, 1).SetEase(Ease.OutSine))
                        .AppendCallback(() => { wiping = false; })
                        ;
        }
    }

    public void UndoTheWipe()
    {

        if (!wiping)
        {
            wiping = true;
            DOTween.Sequence()
            .Append(wipeGroup.DOFade(0f, 0.5f))
            .Join(wipeTransform.DOLocalMoveY(1323, 0.5f))
            .Append(wipeTransform.DOLocalMoveY(wipeTransformY, 0.1f))
            .AppendCallback(() => { wiping = false; })
            ;
        }

    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            StartTheWipe();
        }

        if (Input.GetKeyDown(KeyCode.N))
        {
            UndoTheWipe();
        }
    }
}
