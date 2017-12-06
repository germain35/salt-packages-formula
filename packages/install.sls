{%- set packages = salt['pillar.get']('packages:install', {}) %}

packages_install:
  pkg.installed:
    - pkgs: {{ packages }}
    - refresh: True
