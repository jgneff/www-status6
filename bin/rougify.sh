#!/bin/bash
# Creates the CSS file for a Rouge theme
# https://github.com/rouge-ruby/rouge#command-line

# List themes with: rougify help style
theme=github

output=docs/_sass/rouge-${theme}.scss
rougify style $theme > $output
