# PRA - Serveur DevOps SRV-DOPS

## Objectif
Recréer automatiquement les services essentiels (registry + nginx) en cas de crash partiel.

## Étapes
1. Restaurer le container nginx via Ansible : `ansible-playbook -i hosts deploy_nginx.yml`
2. Restaurer l'image si perdue depuis une sauvegarde locale
3. Superviser automatiquement avec Zabbix via `docker.status[mynginx]`

## Données critiques
- /opt/registry
- /opt/nginx-html
- /opt/cyna-devops
