# ======================================================================
# Makefile - creates header and icon logos for status6.com
# ======================================================================

# Destination for logos
DEST = ../docs/images

# Commands
LATEXMK = latexmk
MUDRAW  = mudraw
OPTIPNG = optipng
PDF2SVG = pdf2svg
CONVERT = convert
RSYNC   = rsync

# Command options
LATEXMK_FLAGS = -lualatex
MUDRAW_FLAGS  = -r 192 -c grayalpha
RSYNC_FLAGS   = --archive --verbose

# List of prerequsites
logos = head.svg head.png icon.png

# ======================================================================
# Pattern Rules
# ======================================================================

tmp/%.pdf: %.tex | tmp
	$(LATEXMK) $(LATEXMK_FLAGS) -output-directory=$(@D) $<

tmp/%.png: tmp/%.pdf
	$(MUDRAW) $(MUDRAW_FLAGS) -o $@ $<

%.png: tmp/%.png
	$(OPTIPNG) -clobber -out $@ $<

%.svg: tmp/%.pdf
	$(PDF2SVG) $< $@

# ======================================================================
# Explicit rules
# ======================================================================

.PHONY: all clean

all: tmp/published

tmp/published: $(logos)
	$(RSYNC) $(RSYNC_FLAGS) $^ $(DEST)/
	touch $@

tmp:
	mkdir -p $@

icon.png: tmp/icon.png
	$(CONVERT) $< -background none -gravity center -extent 192x192 $@
	$(OPTIPNG) $@

clean:
	rm -f *.png *.svg tmp/*
