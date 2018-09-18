{%- if salt['grains.get']('os_family') == 'Debian' %}
packages_autoremove:
  cmd.run:
    - name: apt-get autoremove --purge

packages_clean:
  cmd.run:
    - name: apt-get clean
{%- endif %}
