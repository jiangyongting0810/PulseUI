rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@github.com:jiangyongting0810/Pulse_Ui_Demo.git &&
git push -f -u origin main &&
cd -
