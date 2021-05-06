# PaaS-TA-Monitoring-Release Guide

## 1. Github Repository 및 mariadb Package Download
```
 $ git clone https://github.com/PaaS-TA/PaaS-TA-Monitoring-Release.git
 
 $ cd PaaS-TA-Monitoring-Release
 
 $ wget -O src.zip https://nextcloud.paas-ta.org/index.php/s/Ynn5cZ8R8CesKem/download
 
 $ unzip src.zip
 
 $ rm src.zip
 ```
 
 
## 2. PaaS-TA-Monitoring Release Upload
```
 $ sh create.sh
``` 


## 3. PaaS-TA-Monitoring Deploy
```
 $ cd deployments
 
 $ sh deploy-paasta-monitoring.sh
 ```
