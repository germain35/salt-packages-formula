{%- from "packages/map.jinja" import packages with context %}

include:
  {%- if packages.get('uptodate', False) %}
  - packages.uptodate
  {%- endif %}
  {%- if packages.repos is defined %}
  - packages.repo
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
  {%- if packages.get('autoremove', False) %}
  - packages.autoremove
  {%- endif %}
