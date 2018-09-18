{%- from "packages/map.jinja" import packages with context %}

packages_purge:
  pkg.purged:
    - pkgs: {{ packages.purge }}
