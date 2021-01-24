# ionic-base-project

# Main

```
# You need to change the git server url to required server using following cmd.
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git

# check if it is working.
git remote -v
```

Init Script

```bash
echo 'setting up python env.'
conda activate menuroma
# conda activate your_env_name

```

```bash
# Set proper permission to run the script files.
chmod +x init.sh
chmod +x hard_ios_build.sh

# to answer the question of : do you want to create ionic account ?
# Note : by default we are using zsh. If want to run bash shell.
# change #!/bin/zsh in init.sh and other scripts to
# #!/bin/bash or any other shells.
echo 'n' | ./init.sh
```

```bash
cd main/
```

```
Later - change the app identifies in capacitor config file.
Ionic by default lazy loads configs. So hard rebuild the entire app. So that run time configs would change to reflect that new app id.
```

```bash
ENJOY !!
```

Other high funda commands.

```jsx
# activating env without manually typing env etc..
env="$(ls -d env*)"
. "${env}/bin/activate"
# we are not using nave for now.
# nave use "${env}"
```

```
# Start adding additional scripts here.
```

```
TODO :
force to use yarn rather than npm.
https://dev.to/ascorbic/force-installs-to-use-yarn-not-npm-1lhf
```
