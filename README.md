# Erik Wiklander Resume Site

This repo publishes the resume landing page and renders the full resume from `resume.md` with Jekyll.

## Local Preview

Install Jekyll first:

```sh
gem install jekyll bundler
```

Then run:

```sh
jekyll serve
```

Open <http://127.0.0.1:4000>.

## Generate a PDF

The PDF is generated from `resume.md` with Pandoc and Typst, using `templates/resume.typst` for layout. Do not edit generated PDFs directly.

Install the PDF tools:

```sh
brew install pandoc typst
```

Then run:

```sh
./scripts/generate-pdf.sh
```

The output is written to:

```text
assets/Erik_Wiklander_Resume.pdf
```

The published PDF is tracked in Git and linked from the site. Always regenerate it before pushing changes to `resume.md`, the PDF template, or the PDF generation scripts, and commit the updated PDF together with those changes.

Generated site files and preview PDFs in `dist/` are ignored by Git.
