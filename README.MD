# Dockerized Secure DevOps Kit for Azure (AzSK) 

Setting up AzSK means getting the right PowerShell installed, figuring your organizations proxy settings into the equation and getting Install-Modules to work consistently. 

## References

https://azsk.azurewebsites.net
https://github.com/azsk

## Build

docker build -t azsk-image .

docker run -it azsk-image:latest

## Using Docker

docker pull docker.io/neilspink/azsk

docker run -it neilspink/azsk

When you see the PS /> prompt you can run AzSK.

Get-AzSKControlsStatus -SubscriptionId

Importing Az modules may take a while. It will prompt you to log in via web browser when you have entered the code and selected your account wait go back to prompt and press enter.

For Help Goto https://azsk.azurewebsites.net/02-Secure-Development/Readme.html#execute-svts-for-all-controls-of-all-resources-in-a-given-subscription

