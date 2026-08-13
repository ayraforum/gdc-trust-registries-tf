# Google Docs-ready exports

Files in this directory are generated from the Track 1 Markdown sources by `../export-google-docs-ready.rb`.

The export process:

- substitutes known repository-relative document links with the canonical Google Doc links in `../google-doc-link-map.json`;
- converts links to other repository Markdown files into absolute GitHub links; and
- leaves the source Markdown and all Google Docs unchanged.

Do not edit generated copies directly. Update the source Markdown or link map and regenerate them with:

```shell
ruby Track1/export-google-docs-ready.rb
```
