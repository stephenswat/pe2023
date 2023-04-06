TYPST ?= typst

PDFS =

all: laptopcollege_intro.pdf project_intro.pdf assignment1.pdf assignment1.tar.gz assignment2.pdf

commit.txt:
	git describe --always --dirty="*" > $@

%.pdf: %.typ commit.txt
	$(TYPST) $< $@

%/.commit.txt: commit.txt
	cp $< $@

%.tar.gz: %/ %/.commit.txt
	tar -czf $@ $<

.PHONY: commit.txt
