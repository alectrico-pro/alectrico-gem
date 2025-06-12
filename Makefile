#Si cambio algo en modo local el digest será diferente de la gema publicada

add_cert:
	docker compose run --rm gem gem cert --add certs/alectrico.pem 

build:
	docker compose run --rm gem gem build yaffle.gemspec 

install:
	docker compose run --rm gem gem install yaffle-0.1.1.gem -P HighSecurity 

cert:
	docker compose run --rm gem gem cert --list --gem 

push:
	docker compose run --rm gem gem push yaffle-0.1.1.gem 

t:
	docker compose run --rm gem bin/test
