setup:
	bin/setup
	yarn install
	bundle install

start:
	bin/dev

test:
	yarn run build
	yarn run build:css

slim_linter:
	gem install slim_lint
	slim-lint app/views/

rubocop:
	gem install rubocop
	gem install rubocop-rails
	rubocop



