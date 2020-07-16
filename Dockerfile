FROM mcr.microsoft.com/azure-powershell:ubuntu-18.04

RUN pwsh -Command Install-Module -Name AzSK -Force -AllowClobber

RUN pwsh -Command Set-AzSKPrivacyNoticeResponse yes

