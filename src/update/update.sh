#/bin/sh

trap "echo 'A1 - DIE!'; exit 0" INT TERM KILL

rm -rf reddit && \
git clone -b microservices https://github.com/express42/reddit.git && \
echo "Entering to exit"
sleep 5m
exit 0

#comment
#post-py
#ui
