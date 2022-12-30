using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using DG.Tweening;
using TMPro;

public class TooltipController : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{

    public bool tooltipVisible = false;
    public CanvasGroup tooltipGroup;
    public TextMeshProUGUI tooltipText;
    public Transform tooltipTransform;

    public string tooltipMessage;

    public Camera pauseCam;


    public void OnPointerEnter(PointerEventData eventData)
    {
        tooltipVisible = true;
        tooltipText.text = tooltipMessage;
        tooltipGroup.DOFade(1, 0.3f);
        

    }

    public void OnPointerExit(PointerEventData eventData)
    {
        tooltipVisible = false;
        tooltipGroup.DOFade(0, 0.2f);
    }

    void Update()
    {
        if (tooltipVisible)
        {
            //Vector3 MousePosForTooltip = new Vector3(Input.mousePosition.x, Input.mousePosition.y + 60, Input.mousePosition.z);
            Vector3 screenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, Input.mousePosition.z);
            screenPoint.z = 1;


                if (screenPoint.x < 120)
                {
                    screenPoint.x = 120;
                }

                tooltipTransform.position = pauseCam.ScreenToWorldPoint(screenPoint);
            
        }
    }
}
