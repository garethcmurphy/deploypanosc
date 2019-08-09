#!/usr/bin/env bash
	openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout fileserver.key -out fileserver.crt -subj "/CN=scicat01.esss.lu.se" -days 3650


	kubectl create secret -ness tls lb-panoscservice --key lb-panosc.key --cert lb-panosc.crt
