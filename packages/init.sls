{%- set packages = salt['pillar.get']('packages', {}) %}

include:
  {%- if packages.get('uptodate', False) %}
  - packages.uptodate
  {%- endif %}
  {%- if packages.purge is defined %}
  - packages.purge
  {%- endif %}
  {%- if packages.remove is defined %}
  - packages.remove
  {%- endif %}
  {%- if packages.install is defined %}
  - packages.install
  {%- endif %}
