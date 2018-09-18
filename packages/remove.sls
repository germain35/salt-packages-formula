{%- from "packages/map.jinja" import packages with context %}

packages_remove:
  pkg.removed:
    - pkgs: {{ packages.remove }}
