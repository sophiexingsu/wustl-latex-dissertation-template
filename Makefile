TARGET = thesis

CLEAN_FILES := $(TARGET).bbl $(TARGET).run.xml $(TARGET).log
DIST_CLEAN_FILES := $(TARGET).pdf $(TARGET).synctex.gz

# latexmk correctly handles circular dependencies in LaTeX. It also compiles
# as many times as required. This is a better choice than calling LaTeX manually
# two or three times in a Makefile
LATEXMK := latexmk

# LuaLaTeX supports modern font encodings (UTF8). This solves many issues with
# special characters in references or citations.
# If you want to use pdflatex instead of lualatex, remove the '-lualatex' switch.
LATEXMK_ARGS := -silent -interaction=nonstopmode -f -cd -file-line-error -recorder -synctex=1 -pdf -lualatex

.PHONY: FORCE all clean distclean

.DEFAULT_GOAL := all
all : $(TARGET).pdf

$(TARGET).pdf : FORCE
	$(LATEXMK) $(LATEXMK_ARGS) $(TARGET).tex

%.pdf : %.tex
	$(LATEXMK) $(LATEXMK_ARGS) $<

clean :
	-$(LATEXMK) $(LATEXMK_ARGS) -f -c $(TARGET)
	-rm -f $(CLEAN_FILES)

distclean :
	-$(LATEXMK) $(LATEXMK_ARGS) -f -C $(TARGET)
	-rm -f $(CLEAN_FILES)
	-rm -f $(DIST_CLEAN_FILES)

# convert graphics based on rules in latexmkrc
%.pdf : %.svg
	inkscape --export-area-page --export-dpi=300 --export-text-to-path --export-pdf="$@" "$<"
