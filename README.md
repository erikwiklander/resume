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

The PDF is generated from the Jekyll-rendered resume page, not edited directly:

```sh
./scripts/generate-pdf.sh
```

The output is written to:

```text
dist/Erik_Wiklander_Resume.pdf
```

Generated site files and PDFs are ignored by Git.
