# APACHE, MOD_PHP7, COMPOSER ALPINE IMAGE

## Goal

    - To have a simple single image php solution, gives up some performance for convenience.

    - Doing this mainatains the philosophy of one image one process without having multiple
      images for a simple php app.

## Configuration

    - Configured for use for a laravel, redis and mongodb setup.

    - Apache mod_rewrite is enabled.

## Installed php extensions

    - ctype
    - curl
    - dom
    - gd
    - iconv
    - intl
    - json
    - mbstring
    - mcrypt
    - mongodb
    - opcache
    - openssl
    - pdo
    - phar
    - posix
    - redis
    - session
    - tokenizer
    - xml
    - xmlwriter
    - xsl
    - zlib

## Usage

    - Just create a dockerfile with:

            `FROM cmosh/alpine-php`

    - Run docker build -t <yourusername>/<yourapp> .

    - The ON BUILD commands will automatically install all vendor dependencies and package the app.

