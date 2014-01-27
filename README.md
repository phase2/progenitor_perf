# Phase2 Performance

This Stack module provides the recipe for standard caching and performance 
optimization at Phase2, using Varnish & Memcached to faciitate the caching
of entities and pages.

## Use Cases

* The site should be fast for anonymous traffic.
* The site should scale for anonymous traffic.
* The site should not perform poorly for limited authenticated traffic.

## Usage

* Download this stack with `drush make` for automatic processing of the makefile.
* Enable the module to turn on dependencies and set better defaults.
* Leave the module enabled to rely on it for functionality or to mitigate database
  conflicts between the modules it recommends.

## Setup

Copy the following memcached and varnish snippets to your `settings.php` file.
If you are using a dedicated `common.settings.php` for core settings, place
part 1 there and part 2 in the individual site settings.

### Part 1

**Note: Update the path to the respective modules as needed.**

    :::php
    // Add Varnish as the page cache handler.
    $conf['cache_backends'][] = 'sites/all/modules/varnish/varnish.cache.inc';
    $conf['cache_class_cache_page'] = 'VarnishCache';
    // Drupal 7 does not cache pages when we invoke hooks during bootstrap. This needs
    // to be disabled.
    $conf['page_cache_invoke_hooks'] = FALSE;

    :::php
    $conf['cache_backends'][] = 'sites/all/modules/memcached/memcache.inc';
    $conf['cache_default_class'] = 'MemCacheDrupal';
    $conf['cache_class_cache_form'] = 'DrupalDatabaseCache';
    $conf['lock_inc'] = 'sites/all/modules/memcache/memcache-lock.inc';
    $conf['memcache_stampede_protection'] = TRUE;
    $conf['memcache_servers'] = array(
      '127.0.0.1:11211' => 'default',
    );
    $conf['memcache_bins'] = array(
     'cache' => 'default',
    );

### Part 2

    :::php
    $conf['memcache_key_prefix'] = 'site_prefix_';

## Recommendations

If you are using Acquia Hosting, install the **Phase2 Acquia** stack for the
Acquia Purge module.

## Maintainers

* Adam Ross <aross@phase2technology.com>

## Keywords

scalability, performance, infrastructure
