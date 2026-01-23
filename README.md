# CV - LaTeX Resume

This repository contains a LaTeX-based CV/Resume built using the YAAC (Yet Another Awesome CV) template.

## Prerequisites

- **TeX Live** with LuaLaTeX support
- **Make** (for using the Makefile)

### Installing TeX Live

#### macOS
```bash
brew install --cask mactex
```

#### Ubuntu/Debian
```bash
sudo apt-get update
sudo apt-get install -y texlive-luatex texlive-latex-extra texlive-fonts-extra
```

## Make Targets

### `make build`
Builds the CV PDF by compiling the LaTeX source files.

**What it does:**
- Creates the `output/` directory if it doesn't exist
- Runs LuaLaTeX twice (two passes) to ensure all cross-references, page numbers, and hyperlinks are correctly resolved
- Outputs the final PDF to `output/cv.pdf`

**Why two passes?**
LaTeX requires multiple passes to resolve cross-references, page numbers, and hyperlinks. The first pass collects reference information, and the second pass uses that information to generate the final document with correct references.

**Usage:**
```bash
make build
```

## Build Pipeline

The repository includes a GitHub Actions workflow that automates building and releasing the CV.

### Workflow: Build and Release CV

**Location:** `.github/workflows/release-cv.yml`

**Trigger:** Manual workflow dispatch (can be triggered from the GitHub Actions tab)

**Inputs:**
- `version`: Release version (e.g., v1.0.0) - defaults to `v1.0.0`
- `tag`: Git tag name - defaults to `v1.0.0`

**How to use:**
1. Go to the **Actions** tab in your GitHub repository
2. Select **Build and Release CV** from the workflow list
3. Click **Run workflow**
4. Enter the version and tag (or use defaults)
5. Click **Run workflow** to start the build

The workflow will build your CV, create a release, and attach the PDF for easy download.

## Project Structure

```
.
├── cv/                    # LaTeX source files
│   ├── cv.tex            # Main CV document
│   ├── section_*.tex     # Individual CV sections
│   ├── yaac-another-awesome-cv.cls  # CV template class
│   └── fonts/            # Custom fonts (Source Sans Pro)
├── output/               # Generated PDF output (gitignored)
├── Makefile              # Build automation
└── .github/
    └── workflows/
        └── release-cv.yml # GitHub Actions workflow
```

## License

This CV template is based on the YAAC (Yet Another Awesome CV) template, which is licensed under CC BY-SA 4.0.
