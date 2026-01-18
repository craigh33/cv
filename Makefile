build:
	mkdir -p output
	cd cv && lualatex -output-directory=../output -interaction=nonstopmode cv.tex
	cd cv && lualatex -output-directory=../output -interaction=nonstopmode cv.tex

clean:
	rm -rf output
	rm -f cv/*.aux cv/*.log cv/*.out cv/*.toc cv/*.fdb_latexmk cv/*.fls cv/*.synctex.gz