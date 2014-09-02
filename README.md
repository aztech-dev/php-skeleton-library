php-skeleton-library
====================

Skeleton for PHP library projects

This is my personal PHP library skeleton for use with Composer. Use it or don't, improve it or not, do whatever you like, but P/R your changes if they're interesting :p

## Use

```shell
composer create-project aztech/php-skeleton-library <target-dir>
```

## Running tests, CS, etc... locally

Run tests and code style analyses

```shell
make test-analysys
```

Run tests only

```shell
make test
```

## Upload code coverage to Scrutinizer

To upload to private repos, you need to export an OCULAR_TOKEN env var :

```shell
export OCULAR_TOKEN='Scrutinizer API token'
```

```shell
make test-upload
```

## Clean up your mess

```shell
make clean
```
