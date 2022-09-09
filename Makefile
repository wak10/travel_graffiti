.DEFAULT_GOAL := usage

up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down

ps:
	docker-compose ps

bundle_install:
	docker-compose run --rm web bundle install

bash:
	docker-compose run --rm web bash

console:
	docker-compose exec web bundle exec rails c

routes:
	docker-compose exec web rails routes

db.create:
	docker-compose run --rm web bundle exec rails db:create

# db.apply:
# 	docker-compose run --rm web bundle exec rake ridgepole:apply

db.seed_fu:
	docker-compose run --rm web bundle exec rails db:seed_fu

# db.dry_run:
# 	docker-compose run --rm web bundle exec rake ridgepole:dry_run

db.drop:
	docker-compose run --rm web bundle exec rails db:drop

db.reset:
	make db.drop
	make db.create
# make db.apply

init:
	make build
	make bundle_install
	make db.create
# make db.apply
	make db.seed_fu

# rubocop:
# 	docker-compose run --rm web bundle exec rubocop

# rubocop.correct:
# 	docker-compose run --rm web bundle exec rubocop -A