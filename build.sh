#!/bin/bash

# Build script for mx-skel-fish-config package
# Places the resulting package file in the build/ directory

set -e  # Exit on any error

# Create build directory if it doesn't exist
mkdir -p build

# Parse command line arguments
force_flag=""
while getopts "f" opt; do
    case $opt in
        f) force_flag="-f" ;;
        *) echo "Usage: $0 [-f]" >&2; exit 1 ;;
    esac
done

# Build the package with PKGDEST set to build/
PKGDEST="$(pwd)/build" makepkg $force_flag

echo "Package built successfully! File placed in build/"