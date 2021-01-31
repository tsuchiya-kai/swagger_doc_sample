git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_ACTOR}@arsaga.jp"
# git remote set-url origin https://beet-aizu:${GITHUB_TOKEN}@github.com/beet-aizu/github_actions.git
git remote set-url origin https://github-actions:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}

git checkout -b master
git branch -a

git log -1
last_commit_message="$(git log -1 | tail -1)"
echo $last_commit_message

if [ git diff --shortstat | grep '[0-9]' ]; then
    git add .
    git commit -m 'test from actions'
    git push origin HEAD
else
    echo "nothing diff"
fi