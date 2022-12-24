using UnityEngine;
using TMPro;

public class VertexDistortion : MonoBehaviour
{
    public float frequency = 10.0f;
    public float amplitude = 0.1f;

    public float noiseFrequency = 1.0f;
    public float noiseAmplitude = 1.0f;
    public float noiseOctaves = 1.0f;
    public float noiseLacunarity = 2.0f;
    public float noisePersistence = 0.5f;

    public float screenBoundsPadding = 300.0f;
    public float timeScale = 1.0f;

    private TextMeshProUGUI textMesh;
    private TMP_TextInfo textInfo;
    private Vector3[] vertices;
    private Matrix4x4 matrix;

    private void Start()
    {
        textMesh = GetComponent<TextMeshProUGUI>();
        textMesh.ForceMeshUpdate();
        textInfo = textMesh.textInfo;
        vertices = textInfo.meshInfo[0].vertices;
        matrix = Matrix4x4.TRS(Vector3.zero, Quaternion.identity, Vector3.one);
    }

    private void Update()
    {
        float localTime = Time.time * timeScale;

        for (int i = 0; i < textInfo.characterCount; i++)
        {
            TMP_CharacterInfo charInfo = textInfo.characterInfo[i];
            int vertexIndex = charInfo.vertexIndex;

            // Skip characters that are not visible
            if (!charInfo.isVisible)
                continue;

            // Apply the distortion effect to the vertices of the character
            float noise = Mathf.PerlinNoise(localTime * noiseFrequency + i, 0.0f);
            noise = Mathf.Pow(noise, noiseOctaves) * noiseAmplitude;
            Vector3 offset = Vector3.up * noise;
            offset.x = Mathf.Repeat(offset.x, 2.0f) - 1.0f;
            offset.y = Mathf.Repeat(offset.y, 2.0f) - 1.0f;
            offset.z = Mathf.Repeat(offset.z, 2.0f) - 1.0f;
            vertices[vertexIndex + 0] = matrix.MultiplyPoint3x4(vertices[vertexIndex + 0] + offset);
            vertices[vertexIndex + 1] = matrix.MultiplyPoint3x4(vertices[vertexIndex + 1] + offset);
            vertices[vertexIndex + 2] = matrix.MultiplyPoint3x4(vertices[vertexIndex + 2] + offset);
            vertices[vertexIndex + 3] = matrix.MultiplyPoint3x4(vertices[vertexIndex + 3] + offset);

            // Update the mesh with the modified vertices
            textMesh.UpdateVertexData(TMP_VertexDataUpdateFlags.All);

            // Check if the text is within screen bounds
            Bounds bounds = textMesh.bounds;
            float screenWidth = Screen.width;
            float screenHeight = Screen.height;

            // Get the corner vertices of the first and last letter
            Vector3 firstVertex = vertices[textInfo.characterInfo[0].vertexIndex];
            Vector3 lastVertex = vertices[textInfo.characterInfo[textInfo.characterCount - 1].vertexIndex + 3];

            // Check if the vertices are outside of screen bounds
            if (firstVertex.x < -screenBoundsPadding || lastVertex.x > screenWidth + screenBoundsPadding ||
                firstVertex.y < -screenBoundsPadding || lastVertex.y > screenHeight + screenBoundsPadding)
            {
                // Reverse time scale if the vertices are outside of screen bounds
                timeScale = -timeScale;
            }
        }
    }
}