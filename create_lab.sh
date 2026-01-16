#!/bin/bash

###############################################################################
# create_lab.sh
# -------------
# This script creates a new lab experiment inside:
#     frontend/lab/
#
# It generates a folder with a basic HTML/CSS/JS structure and a README.md.
# This is ideal for quick tests, prototypes, variations, or learning exercises.
#
# Usage:
#   ./create_lab.sh experiment-name
#
# Example:
#   ./create_lab.sh grid-layout-test
#
# Resulting structure:
#
# frontend/
# └── lab/
#     └── grid-layout-test/
#         ├── index.html
#         ├── style.css
#         ├── script.js
#         └── README.md
#
###############################################################################

# --- Check for argument ---
if [ -z "$1" ]; then
    echo "Error: You must provide a lab experiment name."
    echo "Usage: ./create_lab.sh experiment-name"
    exit 1
fi

LAB_NAME=$1
LAB_DIR="frontend/lab/$LAB_NAME"

# --- Create directory ---
echo "Creating lab experiment: $LAB_NAME"
mkdir -p "$LAB_DIR"

# --- Create base files ---
echo "Generating base files..."

# index.html
cat << 'EOF' > "$LAB_DIR/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab Experiment</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <h1>Lab Experiment</h1>
    <p>This is a quick prototype or learning experiment.</p>

    <script src="script.js"></script>
</body>
</html>
EOF

# style.css
cat << 'EOF' > "$LAB_DIR/style.css"
/* Basic styles for the lab experiment */
body {
    font-family: Arial, sans-serif;
    padding: 20px;
}
EOF

# script.js
cat << 'EOF' > "$LAB_DIR/script.js"
// JavaScript for the lab experiment
console.log("Lab experiment loaded.");
EOF

# README.md
cat << EOF > "$LAB_DIR/README.md"
# $LAB_NAME

This folder contains a small lab experiment created for learning, testing ideas, or prototyping.

## Structure

- \`index.html\` — Main HTML file  
- \`style.css\` — Stylesheet  
- \`script.js\` — JavaScript logic  

## Purpose

This experiment was generated using the \`create_lab.sh\` script to support fast and organized learning iterations.
EOF

echo "Lab experiment '$LAB_NAME' created successfully at: $LAB_DIR"
