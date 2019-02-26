#!/bin/bash


function option-lsort {

airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport'

 "$airport" -s > tmpFile.txt

sort -n -k 3,3 tmpFile.txt
rm tmpFile.txt

}