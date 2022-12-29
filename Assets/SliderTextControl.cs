using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEngine.Audio;

public class SliderTextControl : MonoBehaviour
{
    public TextMeshProUGUI textMesh;
    public Slider slider;
    public AudioMixerGroup mixerGroup;
    public string paramName;
public void UpdateSliderText()
    {
        textMesh.text = slider.value.ToString("F0");
        mixerGroup.audioMixer.SetFloat(paramName, slider.value);
    }

}
