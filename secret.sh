#!/usr/bin/env bash
	openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout lbpanosc.key -out lb-panosc.crt -subj "/CN=scicat01.esss.lu.se" -days 3650


	kubectl create secret -ndev tls lbpanoscservice --key lb-panosc.key --cert lb-panosc.crt
