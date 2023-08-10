Import-Module "$env:USERPROFILE\dotfiles\scripts\Utilities.psm1"
# choco install -y visualstudio2022enterprise --package-parameters="'--config ~/vs2022/.vsconfig'" --execution-timeout 5400

winget install --id Microsoft.VisualStudio.2022.Enterprise --exact --silent --scope machine --accept-source-agreements --accept-package-agreements --override "--wait --quiet --addProductLang En-us --config $env:USERPROFILE\dotfiles\config\vs2022\.vsconfig"
# For simplicity, extensions will not be installed from here but manually selected from Roaming Extension Manager menu once logged in with personnalization account
# Only exception is ozcode extension which requires and independent installer and therefore cannot be installed from VS.
install_silent("ozcode-vs2022", $True)

# Chocolatey version is more up-o-date than winget version
install_silent("vscode", $True)

# Used to install manually JetBrains IDEs and tools (Rider, .NET Tools)
install_silent("JetBrains.Toolbox")