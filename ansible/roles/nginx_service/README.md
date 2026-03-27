# nginx_service Ansible Role

This role installs and configures a simple Nginx service in a clean, repeatable way. It is intentionally minimal and is designed to demonstrate structure, clarity, maintainability, and idempotent behavior rather than complexity.

## What it does

- Installs the Nginx package
- Ensures standardized directories exist
- Deploys the main Nginx configuration from a template
- Deploys an environment-specific index page
- Ensures the Nginx service is enabled and running
- Restarts Nginx only when configuration content changes

## How to run it

From the project root:

```bash
ansible-playbook -i inventory.ini site.yml
