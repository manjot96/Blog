set -e

if [[ "false" != "$TRAVIS_PULL_REQUEST" ]]; then
    echo "Not deploying pull requests."
    exit
fi

if [[ "master" != "$TRAVIS_BRANCH" ]]; then
    echo "Not on the 'master' branch."
    exit
fi

sftp ax16qlpf2e9z@160.153.61.169
lls
exit