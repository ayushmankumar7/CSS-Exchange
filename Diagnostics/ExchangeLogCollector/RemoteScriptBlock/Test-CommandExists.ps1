﻿Function Test-CommandExists {
    param(
        [string]$command
    )

    try {
        if (Get-Command $command -ErrorAction Stop) {
            return $true
        }
    } catch {
        Invoke-CatchBlockActions
        return $false
    }
}
