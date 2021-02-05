all: pdf

render:
	Rscript -e 'rmarkdown::render("presentation.Rmd",  encoding = "UTF-8")'
	
pdf: render
	Rscript -e 'pagedown::chrome_print("presentation.html")'
	
clean:
	rm -rf presentation.pdf presentation.html presentation_files