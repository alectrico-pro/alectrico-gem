#Si cambio algo en modo local el digest será diferente de la gema publicada


#===== app alectrico (es gema alectrico) ======================
.PHONY: test
test:
	docker compose run --rm alectrico bin/test

.PHONY: alectrico
alectrico:
	docker compose run --rm alectrico bash

#=== dummy =====


dummy:
	docker compose run --rm dummy bash


#credenciales de la app dummy
show_credenciales:
	docker compose run --rm dummy bundle exec bin/rails credentials:show

crear_credenciales:
	docker compose run --rm dummy bundle exec bin/rails credentials:edit

#https://webcrunch.com/posts/the-complete-guide-to-ruby-on-rails-encrypted-credentials
#RAILS_ENV=production EDITOR="code --wait" rails credentials:edit
editar_credenciales:
	docker compose run --rm dummy bash
#en el bash arriba ejecutar
#Dockerifle debe tener instalado vim
#EDITOR=vim rails credentials:edit


#No $VISUAL or $EDITOR to open file in. Assign one like this:

#VISUAL="code --wait" bin/rails credentials:edit

#For editors that fork and exit immediately, it's important to pass a wait flag;
#otherwise, the file will be saved immediately with no chance to edit.


hickwall:
	docker compose run --rm dummy bin/rails generate model Hickwall last_squawk:string

wickwall:
	docker compose run --rm dummy bin/rails generate model Wickwall last_squawk:string last_tweet:string


migrate:
	docker compose run --rm dummy bin/rails db:migrate

console:
	docker compose run --rm dummy bin/rails console


#Cambiar la version en lib/version
#Antes de hacer push, usar la última version
build: 
	docker compose run --rm alectrico bundle exec rake build 

install:
	docker compose run --rm alectrico bundle exec rake install

#da un error de que no ha sido commited
release:
	docker compose run --rm alectrico bundle exec rake release

owner:
	docker compose run --rm alectrico gem owner alectrico --add alectrico®

#antes de usar push, verificar cuál es la última version en pkg
#y anotarla aquí
#ir a santum y cambiar el Gemfile para gem "alectrico" path
push:
	docker compose run --rm alectrico gem push pkg/alectrico-0.1.4.gem


#el modelo no puede existir en la app 
#Debe ser porque usa la misma base de datos
juguete:
	docker compose run --rm dummy bin/rails generate model Juguete link_de_pago_tbk:string

