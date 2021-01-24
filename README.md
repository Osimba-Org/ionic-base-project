# ionic-base-project

# Usage Guidelines

```
Clone this repo
```

Setup Development Space.

```bash
echo "setting up python env"

conda activate menuroma
# conda activate your_env_name

<< 'TROUBLESHOOT-PERMISSION-COMMENT'
#If you get any permission errors try.
#following and run the scripts.
#chmod +x init.sh
#chmod +x hard_ios_build.sh

TROUBLESHOOT-PERMISSION-COMMENT


<< 'RUNNING-SHELL-CMDS'
# Note 2: A possible source of issue.
# Sometimes ionic cli asks questions.
# if in future it changes questions it asks. manage accordingly.

# to answer the question of : do you want to create ionic account ? we are echoing no and passing to the script file.
# Note 1: by default we are using zsh. If want to run bash shell.
# change it bash init.sh or <shell> shell_script

RUNNING-SHELL-CMDS
echo "n" | zsh init.sh

cd main/

# activating env again.
# As previous builds are made in a new shell that you selected above.
# current shell i.e. terminal doesn't know that env. So need to activate
# the env in current shell i.e. terminal.
env="$(ls -d ../ionic-base-project/env*)"
. "../ionic-base-project/${env}/bin/activate"
# we are not using nave for now.
# nave use "${env}"


#Building the ionic app. And also triggering ios native build
zsh ../ionic-base-project/hard_ios_build.sh

```

```
1. Now you can change the cloned ionic-base-project folder name
to an as desired project name.

2. Create a new git repo if needed at github.com
then link that to current ionic-base-project files.
as follows.

git add .
git commit -m "First commit"
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git

# to check which repo you are on.
git remote -v

git push -u origin main

now set the git repo url to the new git repository you created.

```

```
Later - change the app identifies in capacitor config file.
Ionic by default lazy loads configs. So hard rebuild the entire app. So that run time configs would change to reflect that new app id.
```

```bash
ENJOY !!
```

```
# Start adding additional your scripts here.
# quick suggestions
# yarn global add <package_name>
# yarn add <package_name>
```

```
echo "module.exports = {extends: ['@commitlint/config-conventional']};" > commitlint.config.js

TODO :
force to use yarn rather than npm.
https://dev.to/ascorbic/force-installs-to-use-yarn-not-npm-1lhf
```
