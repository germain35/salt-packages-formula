
{%- from "packages/map.jinja" import packages with context %}

packages_uptodate:
  pkg.uptodate:
    - refresh: {{ packages.refresh }}
