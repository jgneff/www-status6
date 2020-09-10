# ======================================================================
# Makefile - builds the banner logo and website icon images
# ======================================================================

# Public website directory
webdir = ../docs/images

# Commands
# Note: Scour does better than svgcleaner with output from pdf2svg.
LATEXMK = latexmk
MUDRAW  = mutool draw
OPTIPNG = optipng
PDF2SVG = pdf2svg
SCOUR   = scour
RSYNC   = rsync

# Command options
LATEXMK_OPTS = -lualatex
MUDRAW_OPTS  = -r 192 -c grayalpha
SCOUR_OPTS   = --enable-id-stripping --shorten-ids --indent=none
RSYNC_OPTS   = --archive --verbose --checksum

# List of targets
targets = logo.png logo.svg icon.png

# ======================================================================
# Pattern Rules
# ======================================================================

icon.png: MUDRAW_OPTS = -r 96 -c gray

tmp/%.pdf: %.tex | tmp
	$(LATEXMK) $(LATEXMK_OPTS) -output-directory=$(@D) $<

%.png: tmp/%.pdf
	$(MUDRAW) $(MUDRAW_OPTS) -o $@ $<
	$(OPTIPNG) $@

tmp/%.svg: tmp/%.pdf
	$(PDF2SVG) $< $@

%.svg: tmp/%.svg
	$(SCOUR) -i $< -o $@ $(SCOUR_OPTS)

# ======================================================================
# Explicit rules
# ======================================================================

.PHONY: all pub clean

all: $(targets)

tmp:
	mkdir -p $@

pub: $(targets)
	$(RSYNC) $(RSYNC_OPTS) $^ $(webdir)/

clean:
	rm -f *.png *.svg tmp/*
