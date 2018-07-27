#!/bin/bash

export PS1="\$(__k8s_context) : \$(__k8s_current_namespace) $PS1"
