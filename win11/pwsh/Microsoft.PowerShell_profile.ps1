Set-Alias -Name code -Value code-insiders
Set-Alias -Name configSync -Value C:\Users\Administrator\scripts\configSync_E414.bat

function proxy {
    $env:HTTP_PROXY="http://127.0.0.1:7897"; $env:HTTPS_PROXY="http://127.0.0.1:7897"
}

function explain {
    param(
        $command
    )
    gh copilot explain $command
}
function suggest {
    param(
        $description
    )
    gh copilot suggest $description
}

Set-PSReadlineKeyHandler -Chord Tab -Function MenuComplete

Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}

Invoke-Expression (&starship init powershell)
