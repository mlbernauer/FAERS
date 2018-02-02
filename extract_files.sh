#!/bin/bash

ls *.zip | sed -r 's/.zip//g' | xargs -I {} unzip {}.zip -d {}
