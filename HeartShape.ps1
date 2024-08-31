param(
    [string]$url = "https://pastebin.com/raw/rtm5RU7b",
    [int]$delay = 0
)

$host.UI.RawUI.BackgroundColor = "Black"
$host.UI.RawUI.ForegroundColor = "Red"
Clear-Host
$tempFile = [System.IO.Path]::GetTempFileName()
Invoke-WebRequest -Uri $url -OutFile $tempFile
function Print-AsciiArt {
    param(
        [string]$filePath,
        [int]$delay
    )

    Get-Content -Path $filePath | ForEach-Object { 
        $line = $_
        foreach ($char in $line.ToCharArray()) {
            Write-Host -NoNewline $char
            Start-Sleep -Milliseconds $delay
        }
        Write-Host
    }
}
Print-AsciiArt -filePath $tempFile -delay $delay
Write-Host " "
Remove-Item -Path $tempFile
Write-Host "Press any key to continue..."
$null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
