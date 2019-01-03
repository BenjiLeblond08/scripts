#/bin/bash

## a lancer en root ou en sudo user
echo "## Creating directory in home"
cd "${HOME}"
mkdir test_debug

echo "## Find test"
find /etc/ssh -name "*_config"

echo "##copy test"
cp /etc/ssh/sshd_config "${HOME}/test_debug"

echo "## Stop non-existing service"
systemctl stop not_a_joke.service

echo "## Removing file"
rm "${HOME}/test_debug/sshd_config"

echo "## Re-Creating already existing directory in home"
cd "${HOME}"
mkdir test_debug

echo "## Removing test Directory"
rmdir "${HOME}/test_debug"



