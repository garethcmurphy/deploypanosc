#!/usr/bin/env bash
git pull
helm del --purge lbpanosc
helm install lbpanosc --name lbpanosc --namespace dev 
# --set image.tag=latest --set image.repository garethcmurphy/lb-panosc
