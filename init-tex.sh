#!/usr/bin/env bash

CURRENTPATH=$PWD
pathpre=`cd \`dirname $0\`; pwd`

cd $CURRENTPATH

mkdir -p figures ref archived backup supports

# bash scripts to accelerate operations
cp -rf ${pathpre}/supports ./

cp -rf ${pathpre}/userdef-mathsym.tex supports/
cp -rf ${pathpre}/ref/library.bib ./ref/
cp -rf ${pathpre}/ref/natbib.bst ./ref/

cp -rf ${pathpre}/_gitignore .gitignore
cp -rf ${pathpre}/_projectile .projectile


# touch .tex file
if [ ! -f *.tex ]; then
    touch master.tex
fi
