#Si cambio algo en modo local el digest será diferente de la gema publicada

.PHONY: test
test:
	docker compose run --rm alectrico bin/test

.PHONY: alectrico
alectrico:
	docker compose run --rm alectrico bash



dummy:
	docker compose run --rm dummy bash


hickwall:
	docker compose run --rm dummy bin/rails generate model Hickwall last_squawk:string

wickwall:
	docker compose run --rm dummy bin/rails generate model Wickwall last_squawk:string last_tweet:string


migrate:
	docker compose run --rm dummy bin/rails db:migrate


build: 
	docker compose run --rm alectrico bundle exec rake build 

install:
	docker compose run --rm alectrico bundle exec rake install

#da un error de que no ha sido commited
release:
	docker compose run --rm alectrico bundle exec rake release

owner:
	docker compose run --rm alectrico gem owner alectrico --add alectrico®

push:
	docker compose run --rm alectrico gem push pkg/alectrico-0.1.2.gem


#el modelo no puede existir en la app 
#Debe ser porque usa la misma base de datos
juguete:
	docker compose run --rm dummy bin/rails generate model Juguete link_de_pago_tbk:string

