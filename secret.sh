#!/usr/bin/env bash
	openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout lbpanosc.key -out lbpanosc.crt -subj "/CN=scicat01.esss.lu.se" -days 3650


	kubectl create secret -ndev tls lbpanoscservice --key lbpanosc.key --cert lbpanosc.crt
