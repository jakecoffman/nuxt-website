call npm run generate

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:jakecoffman/jakecoffman.github.io.git master

cd ..
