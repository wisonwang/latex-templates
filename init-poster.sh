#!/usr/bin/env bash

CURRENTPATH=$PWD
pathpre=`cd \`dirname $0\`; pwd`

cd $CURRENTPATH

mkdir -p ref figures backup supports poster-layout

# bash scripts to accelerate operations
cp -rf ${pathpre}/supports ./

cp -rf ${pathpre}/userdef-mathsym.tex supports/
cp -rf ${pathpre}/ref/library.bib  ./ref/

cp -rf ${pathpre}/poster-layout/*.jpg ./poster-layout/
cp -rf ${pathpre}/poster-layout/beamerthemeconfposter.sty ./
touch poster.tex

cp -rf ${pathpre}/_gitignore .gitignore
cp -rf ${pathpre}/_projectile .projectile
