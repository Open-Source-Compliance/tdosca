#!/bin/bash

MASTER=20201201-tdosca-at-open-compliance-summit
pandoc -o ${MASTER}.pdf -f gfm ${MASTER}.md
cp ${MASTER}.md README.md