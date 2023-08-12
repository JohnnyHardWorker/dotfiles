Import-Module "$env:USERPROFILE\dotfiles\scripts\Utilities.psm1"
# ---------------------------------------------- #
# Browsers  ------------------------------------ #
# ---------------------------------------------- #
# choco install -y googlechrome
# choco install -y firefox

# ---------------------------------------------- #
# Social Media  ---------------------------------#
# ---------------------------------------------- #

install_silent("SlackTechnologies.Slack")
install_silent("LINE.LINE")

# ---------------------------------------------- #
# Common tools  ---------------------------------#
# ---------------------------------------------- #
choco install -y paint.net
choco install -y screentogif
choco install -y zoomit
install_silent("WinDirStat.WinDirStat")
install_silent("Microsoft.BingWallpaper")
install_silent("Obsidian.Obsidian")
install_silent("JohnMacFarlane.Pandoc")
install_silent("Microsoft.Whiteboard") #xx
install_silent("Microsoft.PowerToys") # settings to sync
install_silent("ShareX.ShareX")
install_silent("Microsoft.MouseWithoutBorders")
winget install -e -h --id M2Team.NanaZip
winget install -e -h --id QL-Win.QuickLook
winget install -e -h --id File-New-Project.EarTrumpet
winget install -e -h --id LupoPenSuite.DropIt
winget install -e -h --id Notion.Notion
install_silent("SnipDo")
# Already  installed by default
# install_silent("Microsoft.Teams
# install_silent("Microsoft.Office

# ---------------------------------------------- #
# Hardare tools ---------------------------------#
# ---------------------------------------------- #
install_silent("Logitech.Options")


# ---------------------------------------------- #
# Dev tools  ----------------------------------- #
# ---------------------------------------------- #
# install_silent("AndreasWascher.RepoZ")
# install_silent("CoreyButler.NVMforWindows")
# Invoke-WebRequest https://get.pnpm.io/install.ps1 -useb | Invoke-Expression
# # iwr -useb get.scoop.sh | iex


# ---------------------------------------------- #
# Prompt  -------------------------------------- #
# ---------------------------------------------- #
Install-Module posh-git -Scope CurrentUser -Force
RefreshEnv
install_silent("JanDeDobbeleer.OhMyPosh")

# ---------------------------------------------- #
# PowerShell  ---------------------------------- #
# ---------------------------------------------- #
install_silent("Microsoft.PowerShell")
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Remove-Item -Path "$env:USERPROFILE\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\dotfiles\config\powerShell\Microsoft.PowerShell_profile.ps1"

# ---------------------------------------------- #
# NuShell  ------------------------------------- #
# ---------------------------------------------- #
install_silent("Nushell.Nushell")
# saves an initialization script to ~/.oh-my-posh.nu that will be used in Nushell config file
oh-my-posh init nu --config "$env:USERPROFILE\dotfiles\config\prompt\.oh-my-posh.omp.json"
Remove-Item -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Target "$env:USERPROFILE\dotfiles\config\nu\config.nu"
# config auto complete dotnet / nuke / ...

# ---------------------------------------------- #
# Windows Terminal ----------------------------- #
# ---------------------------------------------- #
# Windows Terminal install with Cascadia Code PL font
install_silent("Microsoft.WindowsTerminal")
choco install -y cascadiacodepl
# Windows terminal configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dotfiles\config\windowsTerminal\settings.json"
Copy-Item "$env:USERPROFILE\dotfiles\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\"




# ---------------------------------------------- #
# Azure tools  --------------------------------- #
# ---------------------------------------------- #
# install_silent("Microsoft.AzureCLI")
# install_silent("Microsoft.AzureCosmosEmulator")
# install_silent("Microsoft.AzureDataStudio")
# install_silent("Microsoft.azure-iot-explorer")
# install_silent("Microsoft.AzureStorageExplorer")
# install_silent("Pulumi.Pulumi")
# install_silent("Microsoft.AzureFunctionsCoreTools")
# Azurite can be installed through vscode extension or as a global npm package
# pnpm add -g azurite



# ---------------------------------------------- #
# Blog tools  ---------------------------------- #
# ---------------------------------------------- #
# wyam
# netlify
# statiq
