# ionic-base-project

# Main

Setup env.

```jsx
conda activate menuroma
pip install nodeenv
nodeenv env
. env/bin/activate

```

###

Install packages

```jsx
npm install -g @ionic/cli native-run cordova-res
ionic config set telemetry false --global
```

Starting the app

```jsx
#Already built was done.
#ionic start main blank --type=angular --capacitor
cd main/
npm install @ionic/pwa-elements
ionic build
ionic cap run ios --external -l
```
