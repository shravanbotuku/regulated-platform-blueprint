SHELL := bash
.SHELLFLAGS := -euo pipefail -c
.DEFAULT_GOAL := help

.PHONY: help fmt lint validate docs bootstrap up down teardown-check

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "} {printf "  %-16s %s\n", $$1, $$2}'

fmt: ## Format all Terraform code
	terraform fmt -recursive

lint: ## Run all lint checks (same as CI)
	@echo "not implemented (Phase 0, PLAT-16)"; exit 1

validate: ## Validate the lab Terraform
	terraform -chdir=envs/lab init -backend=false
	terraform -chdir=envs/lab validate

docs: ## Generate module docs
	@echo "not implemented (Phase 0)"; exit 1

bootstrap: ## Create the Terraform state bucket
	@echo "not implemented (PLAT-20)"; exit 1

up: ## Create the lab
	@echo "not implemented (Phase 1)"; exit 1

down: ## Destroy the lab
	@echo "not implemented (Phase 1)"; exit 1

teardown-check: ## Verify nothing billable remains
	@echo "not implemented (Phase 1)"; exit 1