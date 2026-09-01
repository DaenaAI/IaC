# Prompts Codex / agent IA

## Code review
Analyse ce module Terraform comme un reviewer Platform Engineering. Recherche erreurs, risques de state/secrets, anti-patterns, versions, tests et opérations destructives. Ne lance aucun `apply`. Classe les constats par criticité puis propose un diff minimal.

## Tests
Propose des `.tftest.hcl`. Utilise `mock_provider` quand cela évite de vraies ressources. Ne crée aucun credential et ne lance pas `apply`.

## Refactoring
Avant de modifier le code, propose frontières de modules, inputs, outputs, dépendances et changements d'adresse nécessitant éventuellement `moved`. Puis propose le patch.

## Revue de plan
Classe CREATE / UPDATE / REPLACE / DESTROY. Signale le blast radius et les opérations nécessitant une revue humaine.

## GitLab
Propose `fmt → validate → test → security → plan → review → apply`, apply prod manuel, backend distant, aucun secret en clair, OIDC recommandé.
