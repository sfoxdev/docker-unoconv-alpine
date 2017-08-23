#!/bin/bash

timeout -t $TIMETOEXIT unoconv -vvv -f pdf /tmp/*.$FILEEXT || echo 'Time out '$TIMETOEXIT'sec left !!!' >> /tmp/timeout.log
