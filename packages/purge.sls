{%- set packages = salt['pillar.get']('packages:purge', []) %}

packages_purge:
  pkg.purged:
    - pkgs: {{ packages }}
