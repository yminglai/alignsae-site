#!/bin/bash

# Simple script to serve the AlignSAE website locally
# This allows you to preview the website before deploying

PORT=8000

echo "🚀 Starting AlignSAE website on http://localhost:$PORT"
echo "📝 Press Ctrl+C to stop the server"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    python -m http.server $PORT
else
    echo "❌ Error: Python is not installed"
    echo "Please install Python 3 to run this server"
    exit 1
fi
