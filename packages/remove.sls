{%- set packages = salt['pillar.get']('packages:remove', []) %}

packages_remove:
  pkg.removed:
    - pkgs: {{ packages }}
