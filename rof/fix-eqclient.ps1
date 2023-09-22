$eqclient = Get-Content -Path ./eqclient.ini -Raw
$new_eqclient = $eqclient -replace ('\r\nWidth=800', "`r`nWidth=1920") `
-replace ('\r\nHeight=600', "`r`nHeight=1080") `
-replace ('\r\nWindowedWidth=800', "`r`nWindowedWidth=1920") `
-replace ('\r\nWindowedHeight=600', "`r`nWindowedHeight=1080") `
-replace ("\r\nTextureCache=FALSE", "`r`nTextureCache=FALSE`r`nLoadArmor17=TRUE`r`nLoadArmor18=TRUE`r`nLoadArmor19=TRUE`r`nLoadArmor20=TRUE`r`nLoadArmor21=TRUE`r`nLoadArmor22=TRUE`r`nLoadArmor23=TRUE`r`nLoadArmor240=TRUE")
$new_eqclient > eqclient.ini