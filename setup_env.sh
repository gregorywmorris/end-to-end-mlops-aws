#!/bin/bash

# Create a new conda environment with Python 3.11.*
conda create -n mlops-aws python=3.11 -y

# Activate the new conda environment
source $(conda info --base)/etc/profile.d/conda.sh
conda activate mlops-aws

# Install PDM (Python Development Management)
pip install pdm

# Install project dependencies specified in the pyproject.toml file (ensure this file exists)
pdm install

# Confirm installations
echo "Environment and dependencies set up successfully."