name "drupal"
description "Drupal front end application server."
run_list(
  "recipe[mysql::client]",
  "recipe[nfs]",
  "recipe[php::module_curl]",
  "recipe[php::module_gd]",
  "recipe[php::module_mysql]",
  "recipe[php::module_memcache]",
  "recipe[drush]",
  "recipe[drush::make]",
  "recipe[drupal::minimal]",
  "recipe[application]"
)
