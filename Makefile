TYPST ?= typst

PDFS =

all: laptopcollege_intro.pdf project_intro.pdf assignment1.pdf assignment1.tar.gz assignment2.pdf assignment3.pdf assignment3.tar.gz assignment4.pdf

commit.txt:
	git describe --always --dirty="*" > $@

%.pdf: %.typ commit.txt
	$(TYPST) compile $< $@

%/.commit.txt: commit.txt
	cp $< $@

%.tar.gz: %/ %/.commit.txt
	tar -czf $@ $<

.PHONY: commit.txt
