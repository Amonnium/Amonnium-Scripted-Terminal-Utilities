$tempFolders = @(
    $env:TEMP
    "C:\Windows\Temp"
)

foreach ($folder in $tempFolders) {
    if (Test-Path $folder) {
        Get-ChildItem -Path $folder -File -Force -ErrorAction SilentlyContinue |
            Remove-Item -Force -ErrorAction SilentlyContinue
    }
}