#!/bin/bash

/bin/bash -c "timeout 45 java -Djava.awt.headless=true -jar /usr/share/burpsuite/burpsuite.jar < <(echo y) &"
sleep 30
curl http://127.0.0.1:8080/cert -o /tmp/cacert.der
exit