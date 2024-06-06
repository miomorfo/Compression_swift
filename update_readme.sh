#!/bin/bash
#
echo "# Compression_swift" > README.md
echo "" >> README.md

for file in *.swift
do
    echo "## ${file}" >> README.md
    echo '```swift' >> README.md
    cat "${file}" >> README.md
    echo '```' >> README.md
    echo "" >> README.md
done