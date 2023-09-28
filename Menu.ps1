# PowerShell Script for EverStaR's Tools
# -----------------------------------------------------------
# Author: EverStaR
# GPTChat V4.5 AI
# Date: 9/27/2023
# Version: 1.0
# Contact: For comments and questions, please reach out to scripter@everstar.com
# -----------------------------------------------------------

# Colorful Banner
Write-Host "`n"
Write-Host "##################################################" -ForegroundColor Cyan
Write-Host "#                                                #" -ForegroundColor Cyan
Write-Host "#                 EverStaR's Tools                #" -ForegroundColor Yellow
Write-Host "#                                                #" -ForegroundColor Cyan
Write-Host "##################################################" -ForegroundColor Cyan
Write-Host "`n"

# Description
Write-Host "This script provides a menu for launching EverStaR's Tools." -ForegroundColor Green
Write-Host "Select from the categories below to proceed." -ForegroundColor Green
Write-Host "`n"
# File Management Menu
function Show-FileManagementMenu {
    Write-Host "`nFile Management Menu`n"
    Write-Host "1. BackUp Utility" -ForegroundColor Yellow
    Write-Host "2. DeDuplicator" -ForegroundColor Yellow
    Write-Host "3. View BackUp Utility README" -ForegroundColor Yellow
    Write-Host "4. View DeDuplicator README" -ForegroundColor Yellow
    Write-Host "5. View filetypes2.psd1" -ForegroundColor Yellow
    Write-Host "6. Back to Main Menu" -ForegroundColor Red

    $choice = Read-Host "`nEnter your choice"

    switch ($choice) {
        '1' {
            if (Test-Path "backup.ps1") {
                .\backup.ps1
            } else {
                Start-Process "https://github.com/ScripterOne/BackupUtility/blob/main/README.md"
            }
            Show-FileManagementMenu  # Relaunch the File Management Menu
        }
        '2' {
            if (Test-Path "DeDuplicator.ps1") {
                .\DeDuplicator.ps1
            } else {
                Start-Process "https://github.com/ScripterOne/DeDuplicator/blob/main/README.md"
            }
            Show-FileManagementMenu  # Relaunch the File Management Menu
        }
        '3' {
            Start-Process "https://github.com/ScripterOne/BackupUtility/blob/main/README.md"
            Show-FileManagementMenu  # Relaunch the File Management Menu
        }
        '4' {
            Start-Process "https://github.com/ScripterOne/DeDuplicator/blob/main/README.md"
            Show-FileManagementMenu  # Relaunch the File Management Menu
        }
        '5' {
            Clear-Host
            Get-Content "filetypes2.psd1" | Out-Host
            Read-Host "`nPress Enter to return to the main menu."
            Show-FileManagementMenu  # Relaunch the File Management Menu
        }
        '6' {
            Show-MainMenu  # Go back to the Main Menu
        }
        default {
            Write-Host "`nInvalid choice. Please try again.`n" -ForegroundColor Red
            Show-FileManagementMenu  # Relaunch the File Management Menu
        }
    }
}
# Security Menu
function Show-SecurityMenu {
    Write-Host "`nSecurity Menu`n"
    Write-Host "1. Check4BadIPs" -ForegroundColor Yellow
    Write-Host "2. View NetTrafficReport.csv" -ForegroundColor Yellow
    Write-Host "3. View BadIPList.csv" -ForegroundColor Yellow
    Write-Host "4. Back to Main Menu" -ForegroundColor Red

    $choice = Read-Host "`nEnter your choice"

    switch ($choice) {
        '1' {
            if (Test-Path "Check4BadIPs.ps1") {
                .\Check4BadIPs.ps1
            } else {
                Start-Process "https://github.com/ScripterOne/Check4BadIPs/blob/main/README.md"
            }
            Show-SecurityMenu  # Relaunch the Security Menu
        }
        '2' {
            Clear-Host
            Import-Csv "NetTrafficReport.csv" | Format-Table | Out-Host
            Read-Host "`nPress Enter to return to the main menu."
            Show-SecurityMenu  # Relaunch the Security Menu
        }
        '3' {
            Clear-Host
            Import-Csv "BadIPList.csv" | Format-Table | Out-Host
            Read-Host "`nPress Enter to return to the main menu."
            Show-SecurityMenu  # Relaunch the Security Menu
        }
        '4' {
            Show-MainMenu  # Go back to the Main Menu
        }
        default {
            Write-Host "`nInvalid choice. Please try again.`n" -ForegroundColor Red
            Show-SecurityMenu  # Relaunch the Security Menu
        }
    }
}
# Main Menu Function
function Show-MainMenu {
    param (
        [string]$Title = 'Main Menu'
    )

    Clear-Host
    Write-Host "`n$Title`n"

    Write-Host "1. File Management" -ForegroundColor Yellow
    Write-Host "2. Security" -ForegroundColor Yellow
    Write-Host "3. Exit" -ForegroundColor Red

    $choice = Read-Host "`nEnter your choice"

    switch ($choice) {
        '1' {
            Show-FileManagementMenu
        }
        '2' {
            Show-SecurityMenu
        }
        '3' {
            Write-Host "`nExiting...`n" -ForegroundColor Red
            exit
        }
        default {
            Write-Host "`nInvalid choice. Please try again.`n" -ForegroundColor Red
            Show-MainMenu
        }
    }
}

# Show Main Menu
Show-MainMenu
