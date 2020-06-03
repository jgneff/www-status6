#!/bin/bash
# Creates the CSS file for a Pygments theme
# https://pygments.org/docs/cmdline/

# List themes with: pygmentize -L styles
theme=vs

output=docs/_sass/pygments-${theme}.scss
pygmentize -S $theme -f html -a .highlight \
   | sed '/.highlight  {/d' > $output
