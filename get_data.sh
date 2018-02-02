#!/bin/bash

# get legacy files
#files=$(curl https://wayback.archive-it.org/7993/20170404211700/https:/www.fda.gov/Drugs/GuidanceComplianceRegulatoryInformation/Surveillance/AdverseDrugEffects/ucm083765.htm | grep -E -i -o "ucm[0-9]*.zip")
#
#base_url="https://wayback.archive-it.org/7993/20170404211700/https://www.fda.gov/downloads/Drugs/GuidanceComplianceRegulatoryInformation/Surveillance/AdverseDrugEffects"
#
#for i in $files;
#do
#   wget $base_url/$i 
#
#done

# get current files
files=$(curl https://www.fda.gov/Drugs/GuidanceComplianceRegulatoryInformation/Surveillance/AdverseDrugEffects/ucm082193.htm | grep -E -i -o "ucm[0-9]*.zip")

base_url="https://www.fda.gov/downloads/Drugs/GuidanceComplianceRegulatoryInformation/Surveillance"

for i in $files;
do
    wget $base_url/$i
done
