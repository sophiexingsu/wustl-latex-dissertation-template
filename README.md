# Dissertation and Thesis Template

The is a LateX version of the disseration and thesis template for The Graduate School at Washington University in St. Louis. (http://graduateschool.wustl.edu/policies-and-guides)

Template version: July 2016

## About

This document contains the guidelines for the proper formatting of dissertations and theses for doctoral and master’s degree-seeking students within the Graduate School at Washington University in St. Louis. The document is formatted using the same guidelines it describes.  Consequently, by making an extra copy of this document, you can use it as a template in which you can replace the original text with your own while still retaining the general formatting.

It is a good idea to read through this document carefully before you save it as a template and begin.  Please remember that all doctoral and master’s students are ultimately responsible for meeting the Graduate School (GS) formatting guidelines. If there is a particular issue that is not found in this template or the Dissertation/Thesis Guide, your committee or discipline should decide how it will be addressed.

Be certain to use your own full name (as recorded in [WebSTAC](https://acadinfo.wustl.edu/)) where appropriate. Make sure you use the month and year your degree is officially to be earned on the title page, abstract page and, if included, vita page(s).

Once completed, you will need to submit your document as a PDF electronically, as per the [Doctoral Dissertation Guide](http://graduateschool.wustl.edu/files/graduate/Doctoral_Dissertation_Guide.pdf) and [Master’s Thesis Guide](http://graduateschool.wustl.edu/files/graduate/Masters_Thesis_Guide.pdf), which also can be found on the Graduate School website.

## How to Use this Template

This template is a LaTeX version of The Graduate School's Microsoft Word template. To use, make a copy all of the files (or fork this repository) and start replacing the contents with your dissertation or thesis.

You will need a texlive installation. You will need to use LuaLaTeX or PDFLatex for this template. However, LuaLaTeX is preferred due to its built in support of special characters.

For your bibliography you will need Biber installed. Please note that this template uses Biblatex (not BibTeX). Biblatex is considered a replacement for BibTeX and supports special characters and URLs in citations.

You will also need Latexmk. Latexmk compiles LaTeX documents the correct number of times. Many makefiles for LaTeX documents often compile twice. Sometimes this is unnecessary, other times it is not enough. Latexmk will correctly determine the number of compilations necessary to produce a correct document.

When including figures, please use PDF files whenever possible. If it's not possible, add a rule to the `Makefile` and `latexmkrc` files to convert the image to PDF during compilation.

## Compiling

To compile: `make`

To clean build files, but not the compiled document: `make clean`

To clean all files, included the compiled document: `make distclean`

## Contributing

*Please help keep this template up to date with The Graduate School's Microsoft Word template.*

If you would like to submit changes to this template, please fork this repository and submit a pull request.
