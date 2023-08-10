# # ---------------------------------------------- #
# # Browsers  ------------------------------------ #
# # ---------------------------------------------- #
# choco install -y googlechrome
# choco install -y firefox

# ---------------------------------------------- #
# Social Media  ---------------------------------#
# ---------------------------------------------- #

winget install -e -h --id SlackTechnologies.Slack
winget install -e -h --id LINE.LINE

# ---------------------------------------------- #
# Common tools  ---------------------------------#
# ---------------------------------------------- #
choco install -y paint.net
choco install -y screentogif
choco install -y zoomit
winget install -e -h --id WinDirStat.WinDirStat
winget install -e -h --id Microsoft.BingWallpaper
winget install -e -h --id Obsidian.Obsidian
winget install -e -h --id JohnMacFarlane.Pandoc
winget install -e -h --id Microsoft.Whiteboard -s msstore
winget install -e -h --id Microsoft.PowerToys # settings to sync
winget install -e -h --id M2Team.NanaZip
winget install -e -h --id QL-Win.QuickLook
winget install -e -h --id ShareX.ShareX
winget install -e -h --id File-New-Project.EarTrumpet
winget install -e -h --id LupoPenSuite.DropIt
winget install -e -h --id Notion.Notion
winget install -e -h --id Microsoft.MouseWithoutBorders
winget install -e -h --id SnipDo
# Already  installed by default
# winget install -e -h --id Microsoft.Teams
# winget install -e -h --id Microsoft.Office

# ---------------------------------------------- #
# Hardare tools ---------------------------------#
# ---------------------------------------------- #
winget install -e -h --id Logitech.Options


# # ---------------------------------------------- #
# # Dev tools  ----------------------------------- #
# # ---------------------------------------------- #
# winget install -e -h --id AndreasWascher.RepoZ
# winget install -e -h --id CoreyButler.NVMforWindows
# Invoke-WebRequest https://get.pnpm.io/install.ps1 -useb | Invoke-Expression
# # iwr -useb get.scoop.sh | iex


# ---------------------------------------------- #
# Prompt  -------------------------------------- #
# ---------------------------------------------- #
pwsh -Command { Install-Module posh-git -Scope CurrentUser -Force}
winget install -e -h --id JanDeDobbeleer.OhMyPosh

# ---------------------------------------------- #
# PowerShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.PowerShell
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Remove-Item -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\dotfiles\config\powerShell\Microsoft.PowerShell_profile.ps1"

# ---------------------------------------------- #
# NuShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Nushell.Nushell
# saves an initialization script to ~/.oh-my-posh.nu that will be used in Nushell config file
oh-my-posh init nu --config "$env:USERPROFILE\dotfiles\config\prompt\.oh-my-posh.omp.json"
Remove-Item -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Target "$env:USERPROFILE\dotfiles\config\nu\config.nu"
# config auto complete dotnet / nuke / ...

# ---------------------------------------------- #
# Windows Terminal ----------------------------- #
# ---------------------------------------------- #
# Windows Terminal install with Cascadia Code PL font
winget install -e -h --id Microsoft.WindowsTerminal -s msstore
choco install -y cascadiacodepl
# Windows terminal configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dotfiles\config\windowsTerminal\settings.json"
Copy-Item "$env:USERPROFILE\dotfiles\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\"




# # ---------------------------------------------- #
# # Azure tools  --------------------------------- #
# # ---------------------------------------------- #
# winget install -e -h --id Microsoft.AzureCLI
# winget install -e -h --id Microsoft.AzureCosmosEmulator
# winget install -e -h --id Microsoft.AzureDataStudio
# winget install -e -h --id Microsoft.azure-iot-explorer
# winget install -e -h --id Microsoft.AzureStorageExplorer
# winget install -e -h --id Pulumi.Pulumi
# winget install -e -h --id Microsoft.AzureFunctionsCoreTools
# Azurite can be installed through vscode extension or as a global npm package
# pnpm add -g azurite



# ---------------------------------------------- #
# Blog tools  ---------------------------------- #
# ---------------------------------------------- #
# wyam
# netlify
# statiq
