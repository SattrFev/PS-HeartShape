# PS-HeartShape

This PowerShell script downloads ASCII art from a specified URL and displays it in the console with a delay between characters. The script temporarily stores the downloaded ASCII art and then removes it after use.

## Script Overview

The script:

1. Sets console colors to black background and red foreground.
2. Downloads the ASCII art file from a given URL to a temporary file.
3. Prints the ASCII art to the console, character by character, with a configurable delay.
4. Cleans up the temporary file after use.
5. Pauses and waits for the user to press any key before exiting.

## Parameters

- `url` (Optional): The URL of the ASCII art file to download. Default is `"https://pastebin.com/raw/rtm5RU7b"`.
- `delay` (Optional): The delay (in milliseconds) between printing each character. Default is `0`.

## Usage

1. **Set Execution Policy**: Ensure that PowerShell script execution is allowed on your system. You can do this by running the following command in an elevated PowerShell window:
    ```powershell
    Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
    ```

2. **Run the Script**: Execute the script from PowerShell:
    ```powershell
    .\HeartShape.ps1
    ```

3. **View ASCII Art**: The script will download the ASCII art from the specified URL, display it in the console, and then wait for a key press before closing.

## Example

To use a different URL for the ASCII art and set a delay of 100 milliseconds between characters, run:
```powershell
.\HeartShape.ps1 -url "https://your-url.com/your-art.txt" -delay 100

