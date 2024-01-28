build:
	yarn build
	yarn build:css

assets:
	rails assets:precompile

slim_linter:
	slim-lint app/views/

rubocop:
	rubocop

testing:
	rails test

