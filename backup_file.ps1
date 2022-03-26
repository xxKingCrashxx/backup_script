Param(
    [Parameter(Mandatory, HelpMessage = "please provide a source directory")]
    [string]$SrcDir,
    [Parameter(Mandatory, HelpMessage = "please provide a destination directory")]
    [string]$DestDir
)

$BackUpDate = Get-Date -Format "MM-dd-yy"
Compress-Archive -Path $SrcDir -CompressionLevel 'Fastest' -DestinationPath "$($DestDir + 'backup-' + $BackUpDate)"
Write-Host "file backup successfully created at $DestDir"

