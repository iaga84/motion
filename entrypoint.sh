#!/bin/bash

printenv | grep -v "no_proxy" >> /etc/environment

motion -c /config/motion.conf