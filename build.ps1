@echo off
cd ./chrome
$JWT_ISSUER=""
$JWT_SECRET=""
# npm install --global web-ext
npm install
# Remove-Item .\release -Force -Recurse
& { $NODE_ENV = 'production';  gulp public }
# Rename-Item -Path ".\dist" -NewName ".\release"
cd dist
web-ext sign --api-key=$JWT_ISSUER --api-secret=$JWT_SECRET