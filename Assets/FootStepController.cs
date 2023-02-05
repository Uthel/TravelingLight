using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class FootStepController : MonoBehaviour
{
    public AudioClip[] footSteps;
    public FullBodyWalkController bodyControl;
    public AudioSource footstepSource;
    public UIManager uiManager;

    public bool walking = false;
    public bool playing = false;

    private void Update()
    {
        if (!uiManager.isPaused)
        {
            if (bodyControl.vert > 0.1 || bodyControl.vert < -0.1 || bodyControl.horz > 0.1 || bodyControl.horz < -0.1)
            {
                walking = true;
            }
            else
            {
                walking = false;
            }

            if (walking && !playing)
            {
                PlayFootsteps();
            }
        }


    }

    public void PlayFootsteps()
    {
        playing = true;

        DOTween.Sequence()
            .AppendCallback(() =>
            {
                int footstepID = Random.Range(0, 8);
                footstepSource.PlayOneShot(footSteps[footstepID]);

            })
            .AppendInterval(0.5f)
            .AppendCallback(() =>
            {
                playing = false;
            }
            );
    }
}
