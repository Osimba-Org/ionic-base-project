#!/bin/zsh
echo 'ref : https://dev.to/ascorbic/force-installs-to-use-yarn-not-npm-1lhf'

echo '\n\ninstall json node package to edit package.json files'
yarn global add json

echo '\n\nadding preinstall scripts in package.json'
json -I -f package.json -e "this.scripts.preinstall='\$npm_execpath --silent run checkyarn'"

echo '\n\nadding checkyarn scripts in package.json'
json -I -f package.json -e "this.scripts.checkyarn='echo \"\$npm_execpath\" | grep -q \"yarn\\.js$\" || (echo \' ⚠️  Use yarn not npm! ⚠️ \' && echo && exit 1)'"

echo '\n\nremove json node package'
yarn global remove json 
