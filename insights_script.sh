#!/bin/bash
if [ ! -d "analyzed_data" ]; then
    mkdir analyzed_data
    echo "Created directory: analyzed_data"
else
    echo "Directory already exists: analyzed_data"
fi

INPUT_FILE="raw_data/satelite_temperature_data.csv"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found!"
    exit 1
fi

OUTPUT_FILE1="analyzed_data/highest_temp.csv"
echo "Extracting the top 10 highest temperatures..."

awk -F',' 'NR==1 {print; next} {print | "sort -t, -k3,3nr"}' raw_data/satelite_temperature_data.csv | head -n 11 > analyzed_data/highest_temp.csv
