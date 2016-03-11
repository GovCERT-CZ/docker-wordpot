#!/bin/bash
set -e

chown -R wordpot:wordpot /opt/wordpot/logs
chown wordpot:wordpot /opt/wordpot/wordpot.conf

su -c 'authbind --deep python /opt/wordpot/wordpot.py > /opt/wordpot/logs/wordpot.out 2> /opt/wordpot/logs/wordpot.err' wordpot

