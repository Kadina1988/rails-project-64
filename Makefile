setup:
	bin/setup
	yarn install
	bundle install

start:
	bin/dev

test:
	yarn run build
	yarn run build:css

testing:
	rails test




