#!/bin/bash
# Script to download dataset from Google Drive

# Create data directory if not exists
mkdir -p data

# File ID (from Google Drive link)
FILE_ID="1B5Y3XuMVKXvOhEBBFQngeNFp-a7I01Yh"
DEST="data/findata_full.zip"

# Download using gdown (needs to be installed: pip install gdown)
echo "Downloading dataset..."
gdown --id $FILE_ID -O $DEST

# Unzip if it's a zip file
if [[ $DEST == *.zip ]]; then
    echo "Unzipping dataset..."
    unzip -o $DEST -d data/
    echo "Done. Files are in ./data/"
else
    echo "Download complete. File saved at $DEST"
fi
