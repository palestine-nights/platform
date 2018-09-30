.PHONY: run start proxy

COMPOSE = docker-compose

default: start

run: proxy
	$(COMPOSE) up proxy website

start: proxy
	$(COMPOSE) up -d proxy website

proxy:
	@touch config/acme.json && chmod 0600 config/acme.json