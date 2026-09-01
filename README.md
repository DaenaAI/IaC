# Kit TP — Infrastructure as Code / Terraform 2026

Cas fil rouge : **NovaShop Platform**.

- Terraform cible : 1.16.x
- Parcours local/safe : `terraform_data`, aucune ressource Cloud
- Parcours Cloud optionnel : AWS sandbox
- OVHcloud : exemple de **provider** `ovh/ovh`
- CI/CD : GitLab, pipeline explicite `fmt → validate → test → plan → review → apply`

## Arborescence

- `00-iac-thinking` : TP0 — penser IaC
- `01-basics-local` : TP1A — fondamentaux sans Cloud
- `01-basics-aws` : TP1B — variante AWS sandbox
- `02-modules` : TP2 — refactoring/modules
- `03-code-review` : TP3 — Terraform volontairement dégradé
- `04-gitlab` : TP4 — pipeline GitLab
- `05-platform-challenge` : TP5 — architecture d'entreprise + IA
- `extras/ovh` : provider OVHcloud

## Contrôles

```bash
terraform fmt -check -recursive
terraform init
terraform validate
terraform test
terraform plan
```

Ne jamais utiliser de credentials ni de states de production dans ce kit.
