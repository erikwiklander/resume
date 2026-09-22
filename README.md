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
dist/Erik_Wiklander_Resume.pdf
```

Generated site files and PDFs are ignored by Git.
