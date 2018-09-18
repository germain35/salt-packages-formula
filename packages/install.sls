{%- from "packages/map.jinja" import packages with context %}

packages_install:
  pkg.installed:
    - pkgs: {{ packages.install }}
    - refresh: {{ packages.refresh }}
