TYPST ?= typst

all: laptopcollege_intro.pdf assignment1.pdf assignment1.tar.gz

commit.txt:
	git describe --always --dirty="*" > $@

%.pdf: %.typ commit.txt
	$(TYPST) $< $@

%/.commit.txt: commit.txt
	cp $< $@

%.tar.gz: %/ %/.commit.txt
	tar -czf $@ $<

.PHONY: commit.txt
