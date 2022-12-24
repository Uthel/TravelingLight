using UnityEngine;

public class AlienAlphabetScript : MonoBehaviour
{
    public Sprite[] alienAlphabetSprites;

    void Start()
    {
        alienAlphabetSprites = new Sprite[26];
        for (int i = 0; i < 26; i++)
        {
            char c = (char)('A' + i);
            string letter = c.ToString();
            Texture2D texture = GenerateTexture(letter);
            Sprite sprite = Sprite.Create(texture, new Rect(0, 0, texture.width, texture.height), Vector2.zero);
            alienAlphabetSprites[i] = sprite;
        }

        GenerateWord("test");
    }

    Texture2D GenerateTexture(string letter)
    {
        // Create a new Texture2D with a size of 20x20 pixels
        Texture2D texture = new Texture2D(20, 20);

        // Fill the texture with a solid color
        Color[] pixels = texture.GetPixels();
        for (int i = 0; i < pixels.Length; i++)
        {
            pixels[i] = Color.green;
        }
        texture.SetPixels(pixels);

        // Add the letter to the texture using the GUI.Label() method
        texture.ReadPixels(new Rect(0, 0, texture.width, texture.height), 0, 0);
        texture.Apply();
        GUI.Label(new Rect(0, 0, texture.width, texture.height), letter);

        return texture;
    }

    public void GenerateWord(string word)
    {
        for (int i = 0; i < word.Length; i++)
        {
            char c = char.ToUpper(word[i]);
            int index = c - 'A';
            Sprite sprite = alienAlphabetSprites[index];
            GUI.DrawTexture(new Rect(i * 20, 0, 20, 20), sprite.texture);
        }
    }
}