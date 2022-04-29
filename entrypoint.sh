#!/bin/sh -l

argocd version --short

# /envs
export APPID=$1
export APPENV=$2
export USERNAME=$3
export PASSWORD=$4
export ARGOURL="argocd-server.argocd.svc.cluster.local"


printf "\033[0;32m=====> Login ArgoCD URL: $ARGOURL \033[0m\n"
argocd login --insecure --username $USERNAME --password $PASSWORD $ARGOURL


printf "\033[0;32m=====> Verify $APPID-$APPENV \033[0m\n"
argocd app get $APPID-$APPENV


printf "\033[0;32m=====> Sync $APPID-$APPENV \033[0m\n"
argocd app sync $APPID-$APPENV


if [ $? -eq 0 ]; then
  printf "\033[0;32m=====> Sync $APPID-$APPENV Success \033[0m\n"
else
  printf "\033[0;31m=====> Sync $APPID-$APPENV Failed \033[0m\n"
fi