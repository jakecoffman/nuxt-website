npm run generate

cd dist

echo www.jakecoffman.com>CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:jakecoffman/jakecoffman.github.io.git master

cd -
