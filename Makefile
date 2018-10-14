.PHONY: run start proxy

COMPOSE = docker-compose

default: start

run: proxy
	$(COMPOSE) up proxy places website

start: proxy
	$(COMPOSE) up -d proxy places website

proxy:
	@touch config/acme.json && chmod 0600 config/acme.json

down:
	$(COMPOSE) down
