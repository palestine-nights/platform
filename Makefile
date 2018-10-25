.PHONY: run start proxy

COMPOSE = docker-compose

default: start

up: proxy
	@$(COMPOSE) up -d website \
	                  places  \
	                  redis   \
	                  proxy

proxy:
	@touch config/acme.json && chmod 0600 config/acme.json

down:
	@$(COMPOSE) down
