#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
  echo "❌ Error: Please provide a commit message."
  echo "Usage: ./autopush.sh \"your message\""
  exit 1
fi

echo "📦 Adding files..."
git add .

echo "📝 Committing..."
git commit -m "$1"

echo "🚀 Pushing to GitHub..."
git push

echo "✅ Done!"
