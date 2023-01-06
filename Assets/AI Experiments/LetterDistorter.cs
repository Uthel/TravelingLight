using UnityEngine;
using TMPro;

public class LetterDistorter : MonoBehaviour
{
    public TMP_Text textMesh;
    public float noiseScale = 1.0f;
    public float noiseStrength = 1.0f;

    void Update()
    {
        // Get the characters in the TextMeshPro object.
        TMP_CharacterInfo[] characters = textMesh.textInfo.characterInfo;

        // Iterate through each character.
        for (int i = 0; i < characters.Length; i++)
        {
            TMP_CharacterInfo character = characters[i];

            // Ignore characters that are not visible.
            if (!character.isVisible)
                continue;

            // Get the index of the material used by this character.
            int materialIndex = textMesh.textInfo.characterInfo[i].materialReferenceIndex;

            // Get the vertex data for this character.
            TMP_MeshInfo meshInfo = textMesh.textInfo.meshInfo[materialIndex];
            Vector3[] vertices = meshInfo.vertices;
            Vector3[] normals = meshInfo.normals;
            Vector2[] uvs = meshInfo.uvs0;

            // Get the index of the first vertex used by this character.
            int vertexIndex = character.vertexIndex;

            // Distort the vertices using two layers of noise.
            for (int j = 0; j < vertices.Length; j++)
            {
                Vector3 vertex = vertices[j];
                Vector3 normal = normals[j];

                // Apply the first layer of noise.
                vertex += normal * Mathf.PerlinNoise(vertex.x * noiseScale, vertex.y * noiseScale) * noiseStrength;

                // Apply the second layer of noise.
                vertex += normal * Mathf.PerlinNoise(vertex.x * noiseScale * 2, vertex.y * noiseScale * 2) * noiseStrength;

                vertices[j] = vertex;
            }

            // Update the mesh with the distorted vertices.
            meshInfo.mesh.vertices = vertices;
            meshInfo.mesh.normals = normals;
            meshInfo.mesh.uv = uvs;
            textMesh.UpdateGeometry(meshInfo.mesh, vertexIndex);
        }
    }
}