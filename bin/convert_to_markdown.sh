#!/bin/bash
DOCS_DIR=docs

FILES=$(find ./docs -name "*.rst" | grep -v "index.rst")

# TODO Issues to tackle:
# - mermaid .. mermaid:: -> needs to be converted markdown code block with language hint
# - glossary stuff with term links :terms: -> we should consider some mkdocs plugin for this
# - the openapi integration .. openapi:: -> https://github.com/Neoteroi/mkdocs-plugins?tab=readme-ov-file#openapi-documentation-extension looks promising

for file in $FILES; do
    echo "Converting $file to markdown"
    pandoc -f rst -t markdown_strict -o ${file%.rst}.md $file
    rm $file
done

echo "Done"
