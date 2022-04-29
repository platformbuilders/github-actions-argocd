#!/bin/sh -l

argocd version --short

# /envs
export APPID=$1
export USERNAME=$2
export PASSWORD=$3
export ARGOURL="argocd-server.argocd.svc.cluste.local"
argocd login --insecure --username $USERNAME --password $PASSWORD $ARGOURL

argocd app list