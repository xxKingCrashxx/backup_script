Param(
    [Parameter(Mandatory, HelpMessage = "please provide a source directory")]
    $SrcDir,
    [Parameter(Mandatory, HelpMessage = "please provide a destination directory")]
    $DestDir
)
if(-Not (Test-Path $SrcDir))
{
    Throw "the source directory was invalid or does not exist."
}
$BackUpDate = Get-Date -Format "MM-dd-yy"
$DestFile = "$($DestDir + 'backup-' + $BackUpDate + '.zip')"

if(Test-Path $DestFile)
{
    rmdir -Recurse -Force $DestFile
}
Compress-Archive -Path $SrcDir -CompressionLevel 'Fastest' -DestinationPath "$($DestDir + 'backup-' + $BackUpDate)"
Write-Host "file backup successfully created at $($DestDir + 'backup-' + $BackUpDate)"


