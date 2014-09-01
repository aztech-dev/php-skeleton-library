prebuild:
	@composer install --dev

test: phpunit
test-analysis: test phpcs bugfree
test-upload: scrutinizer

phpunit: prebuild
	@vendor/bin/phpunit --coverage-text --coverage-clover=coverage.clover
phpcs: prebuild
	@vendor/bin/phpcs --standard=phpcs.xml src
bugfree: prebuild
	@vendor/bin/bugfree lint src
ocular:
	@wget https://scrutinizer-ci.com/ocular.phar
scrutinizer: ocular
	@php ocular.phar code-coverage:upload --format=php-clover coverage.clover;


clean:
	@rm -rf coverage.clover
	@rm -rf ocular.phar
	@rm -rf vendor/
	@rm -rf tests/output/
