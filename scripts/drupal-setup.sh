#!/bin/sh
echo "Creating settings.php"
cp web/sites/default/default.settings.php web/sites/default/settings.php
chmod 777 web/sites/default/settings.php

echo "Creating files directory"
mkdir web/sites/default/files
chmod 777 web/sites/default/files

echo "Post Composer Drupal setup complete"