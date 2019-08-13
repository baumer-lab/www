#!/usr/bin/env Rscript

all: www

www: index.Rmd  _site.yml include/after_body.html projects.Rmd students.Rmd contact.Rmd
	Rscript -e "rmarkdown::render_site();"

clean:
	Rscript -e "rmarkdown::clean_site();"