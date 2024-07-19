Start-Process -FilePath explorer.exe -ArgumentList $env:TEMP

function Delete-ItemForcefully {
    param (
        [string]$Path
    )

    try {
        if (Test-Path -Path $Path) {
            Remove-Item -Path $Path -Force -Recurse
            Write-Host "Deleted: $Path"
        } else {
            Write-Host "Path does not exist: $Path"
        }
    } catch {
        Write-Host "Failed to delete: $Path - $($_.Exception.Message)"
    }
}

$tempFolder = $env:TEMP
$items = Get-ChildItem -Path $tempFolder -Recurse

foreach ($item in $items) {
    Delete-ItemForcefully -Path $item.FullName
}
