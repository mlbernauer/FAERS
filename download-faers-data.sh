#!/bin/bash
cat $1 | xargs -I % wget -P data/ %
