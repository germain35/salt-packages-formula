{%- set packages = salt['pillar.get']('packages:purge', []) %}

packages_purge:
  pkg.purged:
    - pkgs: {{ packages }}

{%- if salt['pillar.get']('packages:autoremove', False) %}
  {%- if salt['grains.get']('os_family') == 'Debian' %}
packages_purge_autoremove:
  cmd.run:
    - name: apt-get autoremove --purge
  {%- endif %}
{%- endif %}
