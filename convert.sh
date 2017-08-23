#!/bin/bash

timeout -t $TIMETOEXIT unoconv -vvv -f pdf /tmp/*.$FILEEXT > /tmp/convert.log 2>&1
