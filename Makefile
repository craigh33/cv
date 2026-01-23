build:
	mkdir -p output
	cd cv && lualatex -output-directory=../output -interaction=nonstopmode cv.tex || true
	# Second pass for references
	cd cv && lualatex -output-directory=../output -interaction=nonstopmode cv.tex