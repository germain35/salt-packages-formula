{%- set packages = salt['pillar.get']('packages', {}) %}

include:
  {%- if packages.get('uptodate', False) %}
  - packages.uptodate
  {%- endif %}
  - packages.install
  - packages.remove
  - packages.purge
