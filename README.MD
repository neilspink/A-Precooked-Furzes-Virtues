# Dockerized Secure DevOps Kit for Azure (AzSK)

Setting up AzSK means getting the right PowerShell installed, figuring your organizations proxy settings into the equation and getting Install-Modules to work consistently.

## References

https://azsk.azurewebsites.net  
https://github.com/azsk  
https://hub.docker.com/r/neilspink/azsk

## Using Docker

1. Get the container running in interactive mode
    ```
    docker pull docker.io/neilspink/azsk
    docker run -it neilspink/azsk
    ```

2. You need to login to Azure.
    ```
    Connect-AzAccount
    ```
    It will prompt you to log in via web browser when you have entered the code and selected your account wait go back to prompt and press enter.

    *Once you get the Microsoft login screen success, go to the Docker screen and press <Enter> to provoke the console.*

3. Now you can run an AzSK scan.
    ```
    Get-AzSKControlsStatus -SubscriptionId [<Your Subscription Id>]
    ```

For Help Goto https://azsk.azurewebsites.net/02-Secure-Development/Readme.html#execute-svts-for-all-controls-of-all-resources-in-a-given-subscription

## Build

```
docker build -t azsk-image .

docker run -it azsk-image:latest
```