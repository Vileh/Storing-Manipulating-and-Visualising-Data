#!/bin/bash
function testprint {

  echo For $1
  echo  -------------------------------------

  err1=`diff $1 $2 | grep "^<" | wc -l`
  err2=`diff $1 $2 | grep "^>" | wc -l`
  length1=`wc -l < $1`
  length2=`wc -l < $2`
  #
  #
  let matched=`expr $length1 - $err1`

  echo Matched = $matched / $length1
  echo Matches missed = $err2 / $length2
  echo Score: $matched / $length2
  # #

  echo  ======================================
  linelength1=`awk ' { if ( length > L ) { L=length} }END{ print L}' $1`
  linelength2=`awk ' { if ( length > L ) { L=length} }END{ print L}' $2`

  let wlength=`expr $linelength1 + $linelength2`
  let wlength=`expr $wlength + 15`

  #let space1=`expr $linelength1 + 15`
  echo '  Input       |       Output' > $3

   diff -y  -W $wlength --suppress-common-lines  $1 $2 >>$3
}

echo
echo Your results are:
echo
echo ==========================================
echo ==========================================
echo
testprint Output/A1a.txt Solutions/S1a.txt Q1a.log
testprint Output/A1b.txt Solutions/S1b.txt Q1b.log
testprint Output/A1c.txt Solutions/S1c.txt Q1c.log


echo
echo ==========================================
echo ==========================================
echo

echo The errors can be found in Listxx.log in this directory
echo Where xx is the question,, e.g. 1a,1b,...
echo To see the error - type cat Qxx.log
