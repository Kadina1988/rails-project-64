setup:
	bin/setup
	yarn install
	bundle install

start:
	bin/dev
	yarn run build
	yarn run build:css

