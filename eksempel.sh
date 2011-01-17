#!/bin/bash
latex eksempel.tex
latex eksempel.tex
dvipdf eksempel.dvi
rm eksempel.aux eksempel.log eksempel.dvi
