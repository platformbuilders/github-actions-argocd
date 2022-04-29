#!/bin/sh -l

argo version --short

# /envs
APPID=$1
USERNAME=$2
PASSWORD=$3
ARGOURL='argocd-server.argocd.svc.cluste.local'
argocd login --insecure --username $USERNAME --password $PASSWORD $ARGOURL

argocd app list