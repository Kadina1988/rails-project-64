build:
	yarn build

build_css:
	yarn build:css

assets:
	rails assets:precompile

slim_linter:
	slim-lint app/views/

rubocop:
	rubocop
