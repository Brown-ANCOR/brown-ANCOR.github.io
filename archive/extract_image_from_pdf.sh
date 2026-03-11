#!/bin/sh

# Get the number of pages in the PDF
num_pages=$(pdfinfo index.pdf | grep Pages | awk '{print $2}')

# Convert the last page to JPG
vips copy "index.pdf[dpi=400,page=$((num_pages - 1))]" index.jpg

