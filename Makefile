SC-ISC-proposal.html: SC-ISC-proposal.md
	pandoc SC-ISC-proposal.md -o SC-ISC-proposal.html

SC-ISC-proposal.pdf: SC-ISC-proposal.md
	pandoc SC-ISC-proposal.md -o SC-ISC-proposal.pdf

all:
	make SC-ISC-proposal.pdf
	make SC-ISC-proposal.html

.PHONY: all
