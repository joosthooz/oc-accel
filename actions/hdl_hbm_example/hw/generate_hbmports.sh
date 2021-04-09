#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: scriptname <nports>"
  exit -1
fi

port_template=hbmport_template.txt
portsfile=hbmports.txt
echo -n "" > $portsfile 
for i in $(seq 0 $(($1-1))); do
  sed "s/p@@/p$i/" $port_template > $port_template.tmp
  cat $port_template.tmp >> $portsfile
  rm $port_template.tmp
done

assignments_template=hbmassignment_template.txt
assignmentsfile=hbmassignments.txt
echo -n "" > $assignmentsfile 
for i in $(seq 0 $(($1-1))); do
  # we need to run sed twice because it processed each line only once (and we have 2 occurrences of the pattern each line)
  sed "s/p@@/p$i/" $assignments_template > $assignments_template.tmp
  sed "s/p@@/p$i/" $assignments_template.tmp > $assignments_template.tmp2
  cat $assignments_template.tmp2 >> $assignmentsfile
  rm $assignments_template.tmp $assignments_template.tmp2
done


ipport_template=hbmipport_template.txt
ipportsfile=hbmipports.txt
echo -n "" > $ipportsfile 
for i in $(seq 0 $(($1-1))); do
  twodigitindex=$(printf %02d $i)
  sed "s/m@@/m$twodigitindex/" $ipport_template > $ipport_template.tmp
  cat $ipport_template.tmp >> $ipportsfile
  rm $ipport_template.tmp
done

ipassignments_template=hbmipassignment_template.txt
ipassignmentsfile=hbmipassignments.txt
echo -n "" > $ipassignmentsfile 
for i in $(seq 0 $(($1-1))); do
  # we need to run sed twice because it processed each line only once (and we have 2 occurrences of the pattern each line)
  twodigitindex=$(printf %02d $i)
  sed "s/p@@/p$i/" $ipassignments_template > $ipassignments_template.tmp
  sed "s/m@@/m$twodigitindex/" $ipassignments_template.tmp > $ipassignments_template.tmp2
  cat $ipassignments_template.tmp2 >> $ipassignmentsfile
  rm $ipassignments_template.tmp $ipassignments_template.tmp2
done

constants_template=hbmconstants_template.txt
constantsfile=hbmconstants.txt
echo -n "" > $constantsfile
for i in $(seq 0 $(($1-1))); do
  sed "s/P@@/P$i/" $constants_template > $constants_template.tmp
  cat $constants_template.tmp >> $constantsfile
  rm $constants_template.tmp
done

params_template=hbmparams_template.txt
paramsfile=hbmparams.txt
echo -n "" > $paramsfile
for i in $(seq 0 $(($1-1))); do
  sed "s/P@@/P$i/" $params_template > $params_template.tmp
  cat $params_template.tmp >> $paramsfile
  rm $params_template.tmp
done

paramassignments_template=hbmparamassignment_template.txt
paramassignmentsfile=hbmparamassignments.txt
echo -n "" > $paramassignmentsfile 
for i in $(seq 0 $(($1-1))); do
  # we need to run sed twice because it processed each line only once (and we have 2 occurrences of the pattern each line)
  sed "s/P@@/P$i/" $paramassignments_template > $paramassignments_template.tmp
  sed "s/P@@/P$i/" $paramassignments_template.tmp > $paramassignments_template.tmp2
  cat $paramassignments_template.tmp2 >> $paramassignmentsfile
  rm $paramassignments_template.tmp $paramassignments_template.tmp2
done
