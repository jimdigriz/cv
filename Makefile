FILES := $(sort $(wildcard src/*.md))

SERVER = marmot.wormnet.eu
LOCATION = http/werc/sites/digriz.org.uk/.cv

.PHONY: all
all: build

cv.md: $(FILES)
	pandoc -t markdown -o $@ $^
TARGETS += cv.md

cv.html: $(FILES)
	pandoc --self-contained -t html5 --metadata title="Curriculum Vitae" -o $@ $^
TARGETS += cv.html

cv.pdf: $(FILES)
	pandoc -t latex --variable urlcolor='[HTML]{0000ff}' -o $@ $^
TARGETS += cv.pdf

cv.docx: $(FILES)
	pandoc -t docx -o $@ $^
TARGETS += cv.docx

.PHONY: build
build: $(TARGETS)

.PHONY: clean
clean:
	rm -f $(TARGETS)

.PHONY: deploy
deploy: $(TARGETS)
	rsync -P $^ $(SERVER):$(LOCATION)/
