#!/bin/bash

# Create root files
touch outputs.tf
touch versions.tf
touch variables.tf

# Create environments directory and subdirectories
mkdir -p environments/{staging,prod,dev}

# Create .github directory and files
mkdir -p .github/workflows
touch .github/CODEOWNERS
touch .github/workflows/ci.yml
touch .github/ci.backup

# Create modules directory and subdirectories
mkdir -p modules/{eks,vpc,rds,s3}

# Print success message
echo "Project structure created successfully!"
