#!/bin/bash
# verify_setup.sh - Quick verification that all required files are present

echo "=== LTspice OTA Project Setup Verification ==="
echo ""

# Check required files
files=(
    "simulations/OTA.asc"
    "simulations/tsmc018.lib"
    "simulations/cmosn.asy"
    "simulations/cmosp.asy"
    "simulations/OTA.plt"
    "models/tsmc018.lib"
    "README.md"
    ".gitignore"
)

all_ok=true
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✓ $file"
    else
        echo "✗ $file (MISSING)"
        all_ok=false
    fi
done

echo ""
if [ "$all_ok" = true ]; then
    echo "✓ All required files present!"
    echo ""
    echo "To run the simulation:"
    echo "  1. Open LTspice"
    echo "  2. File → Open → simulations/OTA.asc"
    echo "  3. Click Run (▶) or press Ctrl+R"
else
    echo "✗ Some files are missing. Please check the repository."
    exit 1
fi