#!/bin/zsh
echo 'setting up node env'

pip install nodeenv
# To have an idea of when the environment is created.
timestamp=$(date +%d-%m-%Y_%H-%M-%S)
env="env_${timestamp}"
nodeenv "${env}"
. "${env}/bin/activate"
echo "${env}/bin/activate"

#echo 'create a namespace for node packages'
#npm install -g nave
#which nave
#nave use "${env}" lts
#nave use "${env}"

echo 'Install core node packages'

# node package manager is shit, Use yarn for reliable building.
npm install -g @ionic/cli yarn
ionic config set telemetry false --global
ionic config set -g npmClient yarn
ionic config set -g yarn true
ionic config set -g packageManager yarn
yarn global add native-run

# A possible source of issue. 
# Sometimes ionic cli askes questions. 
# if in future it changes questions it askes. manage accordingly.
ionic start main blank --type=angular --capacitor --quiet --no-git
cd main/

echo 'setting up build for ios with removing ios electron android www folders and building from scratch'
rm -rf ios electron android www
ionic build
ionic cap add ios
ionic cap run ios --external -l