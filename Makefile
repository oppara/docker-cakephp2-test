group =

DC = docker-compose
BASH = $(DC) exec php bash
SRC = /srv
PWD = $(shell pwd)
CMD = ./lib/Cake/Console/cake test core AllTests --stderr --verbose

up:
	$(DC) up -d

down:
	$(DC) down

build:
	$(DC) build

bash:
	$(BASH)

setup:
	$(BASH) -c "cd $(SRC) && composer install"
	cat $(PWD)/config/database.php > $(PWD)/../src/app/Config/database.php

test:
ifdef group
	$(BASH) -c "cd $(SRC) && $(CMD)  --group $(group)"
else
	$(BASH) -c "cd $(SRC) && $(CMD)"
endif


.PHONY: up down build bash setup test


