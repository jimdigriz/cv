A quick and dirty approach to generating CV's from Markdown and a Makefile backed by [pandoc](http://pandoc.org).

Currently generates HTML, PDF and DOCX output, though trivially cut'n'pasting in the Makefile you can configure it to output additional formats

# Preflight

These instructions have been tested on a Debian 'bullseye' 11.x system:

    git clone https://gitlab.com/jimdigriz/cv.git
    sudo apt-get -y install --no-install-recommends lmodern make pandoc rsync texlive-fonts-recommended texlive-latex-recommended texlive-latex-base

# Build

    make -C cv

# Deploy

    make -C cv deploy SERVER=myserver.example.com LOCATION=path/to/stuff
