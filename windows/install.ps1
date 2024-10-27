function Copy-FileIfNotExists {
    param (
        [string]$SourcePath,
        [string]$TargetPath
    )

    if (-Not (Test-Path -Path $TargetPath)) {
        Copy-Item -Path $SourcePath -Destination $TargetPath -Force
        Write-Output "File copied: $TargetPath"
    } else {
        Write-Output "File exists, skipped: $TargetPath"
    }
}

# pwsh
Copy-FileIfNotExists "pwsh\Microsoft.PowerShell_profile.ps1" "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"

# scoop
Copy-FileIfNotExists "scoop\config.json" "$HOME\.config\scoop\config.json"
Copy-FileIfNotExists "scoop\scoopfile.json" "$HOME\.config\scoop\scoopfile.json"

# starship
Copy-FileIfNotExists "starship\starship.toml" "$HOME\.config\starship.toml"

# fastfetch link
Copy-FileIfNotExists "fastfetch\config.jsonc" "$HOME\.config\fastfetch\config.jsonc"
