#!/bin/bash
#############################################################
# Script to convert every documents
# 20170824, DymaxionKim
# Pre-Requisites : TexLive, Pandoc, Noto Sans CJK KR

# Variables
A="README"
PDF="--latex-engine=xelatex -s -S --dpi=600 --table-of-contents --highlight-style tango -f markdown+multiline_tables+grid_tables+pipe_tables+table_captions"
DOCX="-s -S --table-of-contents --highlight-style tango -f markdown+multiline_tables+grid_tables+pipe_tables+table_captions --reference-docx=Format.docx"
ODT="-s -S --highlight-style tango -f markdown+multiline_tables+grid_tables+pipe_tables+table_captions --reference-odt=Format.odt"

echo "Start MakePDF..."

# md 2 pdf
echo "Making PDF files.."
pandoc ${A}.md -o ./pdf/${A}.pdf ${PDF}

# md 2 docx
echo "Making DOCX files.."
pandoc ${A}.md -o ./docx/${A}.docx ${DOCX}

# md 2 odt
echo "Making ODT files.."
pandoc ${A}.md -o ./odt/${A}.odt ${ODT}


echo "Finished !"
exit 0
