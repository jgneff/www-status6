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

.PHONY: all pub diff clean

all: $(logos)

pub: tmp/published

tmp/published: $(logos)
	$(RSYNC) $(RSYNC_FLAGS) $^ $(DEST)/
	touch $@

tmp:
	mkdir -p $@

diff: $(logos)
	diff --from-file=$(DEST)/ $^ || true

clean:
	rm -f *.png *.svg tmp/*
