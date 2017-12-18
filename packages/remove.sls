{%- set packages = salt['pillar.get']('packages:remove', []) %}

packages_remove:
  pkg.removed:
    - pkgs: {{ packages }}

{%- if salt['pillar.get']('packages:autoremove', False) %}
  {%- if salt['grains.get']('os_family') == 'Debian' %}
packages_remove_autoremove:
  cmd.run:
    - name: apt-get autoremove --purge
  {%- endif %}
{%- endif %}
