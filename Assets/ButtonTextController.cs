using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using DG.Tweening;
using TMPro;

public class ButtonTextController : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{

    public TextMeshProUGUI textPro;
    public string textToDisplay;

    public void OnPointerEnter(PointerEventData eventData)
    {
        textPro.text = textToDisplay;
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        textPro.text = " ";
    }
}
