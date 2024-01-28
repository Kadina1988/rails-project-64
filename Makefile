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
	slim-lint app/views/

rubocop:
	rubocop



