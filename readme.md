# Drupal Composer project template
##Introduction
This is an example project demonstrating how to manage core, contrib modules, custom modules, features, cusotm install profiles and custom themes with Composer. For more information see here: 

##Initial install
All dependencies are managed via Composer. To get your drupal instance, you need to install via composer:

1. Install composer locally. [See here.](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx)
2. Run `composer install`
5. Install drupal as you normally would.

##How modules and dependencies are managed
- Contrib modules (e.g. Views, Ctools) are managed as composer dependencies, these are pulled in when the application is installed.
- Third party libraries (e.g. CKEditor) are also composer dependencies.
- Custom modules, themes, features and profiles are version controlled and located in the webroot.

>Note: although it is recommended that dependencies should [not be committed](https://getcomposer.org/doc/faqs/should-i-commit-the-dependencies-in-my-vendor-directory.md) to the repo, there is currently no elegant way to pull in custom modules other than storing them in their own repository, which would lead to unwanted complexity. However, [Pantheon reccomend](https://github.com/pantheon-systems/example-drupal7-travis-composer/tree/master#re pository-management) commiting custom modules in there place and ignoring everything else. This provides a relatively elegant solution where all code is managed in a single repo repository with all external dependencies managed via composer.

The code and repository are managed with a combination of the `.gitignore` file and the [Composer preserve paths plugin](https://github.com/derhasi/composer-preserve-paths).

##How to add new contrib modules
To add a new contrib module to the project just run `composer require ...` e.g. `composer require drupal/ctools:7.*`. This must be run from the root of the project (not the docroot). If you are unsure of the package name, check it on https://packagist.drupal-composer.org.

##How to add new custom modules
Simply add them to `sites/all/modules/custom` and commit them to the repository.

##Shoutouts
This would not be possible without the work of many others including:

- Drupal Composer project: http://drupal-composer.org/
- Preserve paths: https://github.com/derhasi/composer-preserve-paths
- Drupal Libraries Installer Plugin: https://github.com/generalredneck/drupal-libraries-installer-plugin
- Greg Anderson @ Pantheon https://pantheon.io/blog/example-repository-build-drupal-composer-travis
- Pedro Cambra http://cambrico.net/drupal/using-composer-to-build-your-drupal-7-projects
- J P Stacey http://www.jpstacey.info/blog/2014-08-17/drush-make-composer-one-module-time