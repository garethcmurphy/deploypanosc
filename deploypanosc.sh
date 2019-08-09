#!/usr/bin/env bash
helm install lb-panosc --name lbpanosc --namespace dev 
# --set image.tag=latest --set image.repository garethcmurphy/lb-panosc
