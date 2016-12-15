A quick and dirty approach to generating CV's from Markdown and a Makefile backed by [pandoc](http://pandoc.org).

Currently generates HTML, PDF and DOCX output, though trivially cut'n'pasting in the Makefile you can configure it to output additional formats

# Preflight

These instructions have been tested on a Debian 'jessie' 8.x system, though after figuring out the dependencies, it should work on other systems too.

    sudo apt-get install make pandoc texlive-latex-base lmodern texlive-fonts-recommended rsync

    git clone https://gitlab.com/jimdigriz/cv.git

# Build

    make -C cv

# Deploy

    make -C cv deploy SERVER=myserver.example.com LOCATION=path/to/stuff
