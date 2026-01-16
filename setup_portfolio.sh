#!/bin/bash

#------------------------------------------------------------------------------
# Portfolio Structure Setup Script
# --------------------------------
# This script creates a clean and scalable folder structure for a Front-end
# developer who also plans to grow into DevOps. It includes:
# - A projects/ folder for complete, independent projects
# - A lab/ folder for experiments, prototypes, and quick variations
# - A shared/ folder for reusable assets (images, CSS, JS, React components)
# - DevOps folders prepared for future growth
# - .gitkeep files in empty directories
# - A base README.md
#
# ASCII diagram of the structure created:
#
# portfolio/
# ├── frontend/
# │   ├── projects/                 # Complete, independent projects
# │   │   └── .gitkeep
# │   ├── lab/                      # Experiments, prototypes, variations
# │   │   └── .gitkeep
# │   └── shared/                   # Reusable assets
# │       ├── images/
# │       │   └── .gitkeep
# │       ├── css/
# │       │   └── .gitkeep
# │       ├── js/
# │       │   └── .gitkeep
# │       └── components-react/
# │           └── .gitkeep
# │
# ├── devops/
# │   ├── docker/
# │   │   └── .gitkeep
# │   ├── kubernetes/
# │   │   └── .gitkeep
# │   ├── terraform/
# │   │   └── .gitkeep
# │   └── ci-cd/
# │       └── .gitkeep
# │
# ├── scripts/
# │   └── .gitkeep
# │
# ├── docs/
# │   └── .gitkeep
# │
# └── README.md
#
# How to use this script
# ----------------------
# 1. Save this file as:
#       setup_portfolio.sh
#
# 2. Make the script executable:
#       chmod +x setup_portfolio.sh
#
# 3. Run the script:
#       ./setup_portfolio.sh
#
# 4. A new folder named "portfolio/" will be created with the full structure.
#
# 5. Add everything to your Git repository:
#       git add .
#       git commit -m "Add portfolio setup script and folder structure"
#       git push
#
# This script is designed to be portable and reproducible on any Linux or WSL2
# environment, making it easy to recreate your development structure on new
# machines.
#
#------------------------------------------------------------------------------

echo "Creating folder structure..."

# === Create base structure ===
mkdir -p frontend/{projects,lab,shared/{images,css,js,components-react}}
mkdir -p devops/{docker,kubernetes,terraform,ci-cd}
mkdir -p ./{scripts,docs}

echo "Adding .gitkeep files to empty folders..."

# === Add .gitkeep files ===
touch ./frontend/projects/.gitkeep
touch ./frontend/lab/.gitkeep
touch ./frontend/shared/images/.gitkeep
touch ./frontend/shared/css/.gitkeep
touch ./frontend/shared/js/.gitkeep
touch ./frontend/shared/components-react/.gitkeep

touch ./devops/docker/.gitkeep
touch ./devops/kubernetes/.gitkeep
touch ./devops/terraform/.gitkeep
touch ./devops/ci-cd/.gitkeep

touch ./scripts/.gitkeep
touch ./docs/.gitkeep

echo "Generating README.md..."

# === Create README.md ===
cat << 'EOF' > ./README.md
# Portfolio

This repository contains my Front-end development projects (HTML, CSS, JavaScript, React) and will later include DevOps practices such as Docker, Kubernetes, Terraform, and CI/CD pipelines.

## Folder Structure

portfolio/
├── frontend/
│   ├── projects/                 # Complete, independent projects
│   ├── lab/                      # Experiments, prototypes, variations
│   └── shared/                   # Reusable assets (images, CSS, JS, components)
│
├── devops/                       # Reserved for DevOps tools and exercises
│   ├── docker/
│   ├── kubernetes/
│   ├── terraform/
│   └── ci-cd/
│
├── scripts/                      # Utility scripts
│
└── docs/                         # Documentation
 
## Purpose

This structure is designed to support iterative learning: small projects, variations, reusable assets, and a clear separation between Front-end and DevOps work. It grows with my skills in a clean, organized, and scalable way.
EOF

echo "Done! Portfolio structure created successfully."
