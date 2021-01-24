# ionic-base-project

# Main

```
# You need to change the git server url to required server using following cmd.
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git

# check if it is working.
git remote -v
```

Init Script

```jsx
echo 'setting up env'
conda activate menuroma
pip install nodeenv
nodeenv env
. env/bin/activate

echo 'Install node packages'

npm install -g @ionic/cli @capacitor/cli
ionic config set telemetry false --global

echo 'Already built was done and files are configured and provided in current repo. except for native builds'

ionic start main blank --type=angular --capacitor
cd main/

echo 'setting up native-builds'
rm -rf ios electron android www
ionic build
ionic cap add ios
ionic cap run ios --external -l
```

```
Now change the app identifies in xcode. And run as needed.
```

```
# Start adding additional scripts here.
```
