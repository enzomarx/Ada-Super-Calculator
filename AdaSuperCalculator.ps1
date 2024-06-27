# Set path
$folderPath = "C:\AdaSuperCalculator\ASC\src"

# Verify path
if (Test-Path $folderPath -PathType Container) {
    # Open new terminal
    Start-Process powershell.exe -ArgumentList "-NoExit", "-Command Set-Location '$folderPath'"
} else {
    Write-Host "The path '$folderPath' does not exist."
}
