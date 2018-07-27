# simplekubeprompt
bash functions to enhance the bash prompt by showing the currently configured kubectl context and namespace from .kube/config

# Usage

source ```functions.sh``` in your .bashrc, then use the functions in your bash PS1 (like in  ```exampleprompt.sh```)

# Example
```console
~/github/simplekubeprompt> source functions.sh
~/github/simplekubeprompt> source exampleprompt.sh

context1 : mynamespace1 ~/github/simplekubeprompt> kubectl config use-context context2
Switched to context "context2".

context2 : mynamespace1 ~/github/simplekubeprompt> kubectl config use-context context3
Switched to context "context3".

context3 : mynamespace ~/github/simplekubeprompt> kubectl config use-context context1
Switched to context "context1".

context1 : mynamespace1 ~/github/simplekubeprompt>
```

## example data

```console
~/github/simplekubeprompt> kubectl config get-contexts
CURRENT   NAME        CLUSTER           AUTHINFO    NAMESPACE
*         context1    mycluster         myuser      mynamespace1
          context2    mycluster         myuser      mynamespace2
          context3    myothercluster    myuser      mynamespace3
```

### results from this context block from .kube/config

```console
contexts:
- context:
    cluster: mycluster
    namespace: mynamespace1
    user: myuser
  name: context1
- context:
    cluster: mycluster
    namespace: othernamespace2
    user: myuser
  name: context2
- context:
    cluster: anothercluster
    namespace: anothernamespace
    user: myuser
  name: context3
```


