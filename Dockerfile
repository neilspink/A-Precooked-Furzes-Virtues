FROM debian:latest

RUN apt-get update && apt-get upgrade

# Powershell
RUN apt-get install -y wget libgssapi-krb5-2 liblttng-ust0 libicu63 && \
  wget -q https://github.com/PowerShell/PowerShell/releases/download/v7.0.3/powershell-lts_7.0.3-1.debian.10_amd64.deb && \
  dpkg -i powershell-lts_7.0.3-1.debian.10_amd64.deb && \
  apt-get update && \
  /usr/bin/pwsh -c Install-Module Az -Force && \
  rm powershell-lts_7.0.3-1.debian.10_amd64.deb

# AzSK setup
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
  dpkg -i packages-microsoft-prod.deb && \
 apt-get update; \
 apt-get install -y apt-transport-https && \
 apt-get update && \
 apt-get install -y dotnet-sdk-3.1 && \
 /usr/bin/pwsh -c Install-Module AzSK -Force -AllowClobber && \
 rm packages-microsoft-prod.deb

RUN pwsh -Command Set-AzSKPrivacyNoticeResponse yes

RUN apt-get clean

ENTRYPOINT ["pwsh"]