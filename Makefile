# Makefile

include help-system.mak

.PHONY: build clean install make


# Tangle source
$(call print-help,build,	Create mload)

build: mload


mload: mload.nw
	notangle $< > $@
	chmod +x $@

# Install source

$(call print-help,install,	Create and install mload)

INSTALL-DIR = ~/bin

installed := $(addprefix $(INSTALL-DIR)/, mload)
install: $(installed)

$(INSTALL-DIR)/mload : mload
	cp --archive --verbose $< $@

# Documentation
.PHONY: pdf

$(call print-help,pdf,	Create the pdfs)

PDF := mload.pdf

pdf: $(PDF)
pdf: mload.nw

%.tex: %.nw
	noweave \
	  -filter stripmodeline \
	  -filter 'inlinecomments commentre="#[|]" commentshow="#"' \
	  -delay \
	  -autodefs bash \
	  -index \
	  $< > $@

# .PRECIOUS: %.aux

%.aux: %.tex
	pdflatex $<

%.pdf: %.tex %.aux
	pdflatex $<
	pdflatex $<


.PHONY: clean

$(call print-help,clean,	Remove intermediate files)


clean cleanall::
	$(RM) *.aux *.out *.log *.tex

$(call print-help,cleanall,Remove pdfs)

cleanall::
	$(RM) *.pdf

# end GNUmakefile
