#!/usr/bin/env bash

CURRENTPATH=$PWD
pathpre=`cd \`dirname $0\`; pwd`

cd $CURRENTPATH

mkdir -p ref backup supports styles

# bash scripts to accelerate operations
cp -rf ${pathpre}/supports ./

cp -rf ${pathpre}/userdef-mathsym.tex supports/
cp -rf ${pathpre}/ref/library.bib  ./ref/
cp -rf ${pathpre}/beamer-fig        ./figures

cp -rf ${pathpre}/_gitignore  .gitignore
cp -rf ${pathpre}/_projectile .projectile

# use color themes
cp -rf ${pathpre}/beamer-sty/zyuebeamer.sty ./styles/
cp -rf ${pathpre}/beamer-sty/zyuebeamerdark.sty ./styles/
cp -rf ${pathpre}/beamer-sty/zyuebeamerplain.sty ./styles/
cp -rf ${pathpre}/beamer-sty/lcsbbeamer.sty ./styles/

# touch .tex file
touch beamer.tex
