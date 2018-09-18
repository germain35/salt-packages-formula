{%- from "packages/map.jinja" import packages with context %}

{%- set osfamily   = salt['grains.get']('os_family') %}
{%- set os         = salt['grains.get']('os') %}
{%- set osrelease  = salt['grains.get']('osrelease') %}
{%- set oscodename = salt['grains.get']('oscodename') %}

packages_gnupg_pkg:
  pkg.installed:
    - name: gnupg
    - require_in:
      - pkgrepo: packages_repo

{%- for repo, params in packages.get('repos', {}).items() %}
packages_repo_{{repo}}:
  pkgrepo.managed:
    {%- for k, v in packages.repo.items() %}
    - {{k}}: {{v}}
    {%- endfor %}
    - retry:
        attempts: 5
        until: True
        interval: 10
{%- endfor %}
