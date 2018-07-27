#!/bin/bash

__k8s_context()
{
    if [ -x "$(command -v kubectl)" ]; then
      echo $(kubectl config current-context)
    fi
}

__k8s_current_namespace()
{
    if [ -x "$(command -v kubectl)" ]; then
      CONTEXT=$(__k8s_context)
      echo $(kubectl config get-contexts $CONTEXT | awk 'FNR == 2 {print $5}')
    fi
}
