#Si cambio algo en modo local el digest será diferente de la gema publicada

.PHONY: test
test:
	docker compose run --rm yaffle bin/test

.PHONY: yaffle
yaffle:
	docker compose run --rm yaffle bash



dummy:
	docker compose run --rm dummy bash


hickwall:
	docker compose run --rm dummy bin/rails generate model Hickwall last_squawk:string

wickwall:
	docker compose run --rm dummy bin/rails generate model Wickwall last_squawk:string last_tweet:string


migrate:
	docker compose run --rm dummy bin/rails db:migrate


build: 
	docker compose run --rm yaffle bundle exec rake build 

install:
	docker compose run --rm yaffle bundle exec rake install

release:
	docker compose run --rm yaffle bundle exec rake release

push:
	docker compose run --rm yaffle gem push pkg/yaffle-0.1.0.gem

