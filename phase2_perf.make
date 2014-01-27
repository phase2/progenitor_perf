api = 2
core = 7.x

projects[varnish][type] = module
projects[varnish][subdir] = contrib
projects[varnish][version] = 1.x

projects[memcache][type] = module
projects[memcache][subdir] = contrib
projects[memcache][version] = 1.x

projects[expire][type] = module
projects[expire][subdir] = contrib
projects[expire][download][type] = git
projects[expire][download][branch] = 7.x-2.x
projects[purge][download][url] = http://git.drupal.org/project/expire.git
projects[expire][download][revision] = 31278181ee43cbb063885b130751053887d52411

projects[purge][type] = module
projects[purge][subdir] = contrib
projects[purge][download][type] = git
projects[purge][download][branch] = 7.x-1.x
projects[purge][download][url] = http://git.drupal.org/project/purge.git
projects[purge][download][revision] = 2d8af70d8d9482b61f24fd292a18f40527ba9527

projects[entitycache][type] = module
projects[entitycache][subdir] = contrib
projects[entitycache][version] = 1.x
