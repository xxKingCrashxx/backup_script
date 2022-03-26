Param(
    [Parameter(Mandatory, HelpMessage = "please provide a source directory")]
    $SrcDir,
    [Parameter(Mandatory, HelpMessage = "please provide a destination directory")]
    $DestDir
)

$BackUpDate = Get-Date -Format "MM-dd-yy"
Compress-Archive -Path $SrcDir -CompressionLevel 'Fastest' -DestinationPath "$($DestDir + 'backup-' + $BackUpDate)"
Write-Host "file backup successfully created at $($DestDir + 'backup-' + $BackUpDate)"

