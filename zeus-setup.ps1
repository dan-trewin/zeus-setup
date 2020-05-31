Write-Host ""
Write-Host "   zeus-setup"
Write-Host "1) All Installs"
Write-Host "2) Only Utility Installs"
Write-Host "3) Only Software Development Installs"
Write-Host "4) Only Gaming Installs"
Write-Host ""

$Choice = Read-Host -Prompt 'Select your installs preference'

if($Choice -eq 1){
    choco install .\utility-packages.config -y; choco install .\dev-packages.config -y; choco install .\gaming-packages.config -y
} elseif($Choice -eq 2){
    choco install .\utility-packages.config -y
} elseif($Choice -eq 3){
    choco install .\dev-packages.config -y
} elseif($Choice -eq 4){
    choco install .\gaming-packages.config -y
} else {
   write-host("Invalid choice. Run again and choose 1-4.")
}

#choco install .\packages.config -y
