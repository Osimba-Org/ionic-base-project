#!/bin/zsh
echo 'setting up node env'

<< 'NODE-ENV-INSTALLATION'
To have an idea of when the environment is created. 
folder env is created with timestamp
NODE-ENV-INSTALLATION

pip install nodeenv
timestamp=$(date +%d-%m-%Y_%H-%M-%S)
env="env_${timestamp}"
nodeenv "${env}"

echo "activate environment"
. "${env}/bin/activate"

echo 'Install core node packages'

<< 'OPTIONAL-NAVE-INSTALLATION'
We are not using nave for now. 
#echo 'create a namespace for node packages'
#npm install -g nave
#which nave
#nave use "${env}" lts
#nave use "${env}"

OPTIONAL-NAVE-INSTALLATION

<< 'YARN-AND-IONIC-INSTALLATION'
node package manager is shit,
going forward faced lot of dependency issues, when quick exp
projects are created.
So Use yarn for reliable building.

We install ionic and yarn in npm
config ionic to use yarn.
YARN-AND-IONIC-INSTALLATION

npm install -g @ionic/cli yarn
ionic config set telemetry false --global
ionic config set -g npmClient yarn
ionic config set -g yarn true
ionic config set -g packageManager yarn


<< 'IONIC-START-NEW-PROJECT'
Note : A possible source of issue. 
Sometimes ionic cli askes questions. 
if in future it changes questions it askes. manage accordingly.

create a blank ionic project named as 'main'
IONIC-START-NEW-PROJECT
ionic start main blank --type=angular --capacitor --quiet --no-git
