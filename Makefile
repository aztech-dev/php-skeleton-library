prebuild:
	@composer selfupdate
	@composer install --dev

test: prebuild phpunit phpcs bugfree
phpunit:
	@vendor/bin/phpunit
phpcs:
	@vendor/bin/phpcs --standard=phpcs.xml src
bugfree:
	@vendor/bin/bugfree lint src
