#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run generate

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:jakecoffman/jakecoffman.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
#git push -f git@github.com:jakecoffman/coloretto.git master:gh-pages

cd -
