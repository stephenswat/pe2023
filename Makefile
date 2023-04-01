TYPST ?= typst

all: laptopcollege_intro.pdf assignment1.pdf assignment1.tar.gz

%.pdf: %.typ
	$(TYPST) $< $@

%.tar.gz: %/
	tar -czf $@ $<
