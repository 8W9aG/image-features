#!/bin/sh

set -e

echo "Formatting..."
echo "--- Ruff ---"
ruff format imagefeatures
echo "--- isort ---"
isort imagefeatures

echo "Checking..."
echo "--- Flake8 ---"
flake8 imagefeatures
echo "--- pylint ---"
pylint imagefeatures
echo "--- mypy ---"
mypy imagefeatures
echo "--- Ruff ---"
ruff check imagefeatures
echo "--- pyright ---"
pyright imagefeatures
