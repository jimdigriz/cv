FILES := $(sort $(wildcard src/*.md))

all: doit
.PHONY: all

TARGETS += cv.md
cv.md: $(FILES)
	pandoc -t markdown -o $@ $^

TARGETS += cv.html
cv.html: $(FILES)
	pandoc --self-contained -t html5 -o $@ $^

TARGETS += cv.pdf
cv.pdf: $(FILES)
	pandoc -t latex -o $@ $^

TARGETS += cv.docx
cv.docx: $(FILES)
	pandoc -t docx -o $@ $^

doit: $(TARGETS)
.PHONY: doit

clean:
	rm -f $(TARGETS)
.PHONY: clean
