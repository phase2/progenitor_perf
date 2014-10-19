api = 2
core = 7.x

defaults[projects][subdir] = contrib
defaults[projects][type] = module

// Released snapshots

projects[advagg][version] = 2.7
projects[entitycache][version] = 1.2
projects[expire][version] = 2.0-rc3
projects[fast_404][version] = 1.3
projects[memcache][version] = 1.3-rc1
projects[varnish][version] = 1.0-beta3

// Patched/development snapshots

projects[purge][version] = 1.x-dev
projects[purge][download][type] = git
projects[purge][download][branch] = 7.x-1.x
projects[purge][download][url] = http://git.drupal.org/project/purge.git
// Fixes end-user impact pass-thru of error messages.
projects[purge][download][revision] = 2d8af70d8d9482b61f24fd292a18f40527ba9527


