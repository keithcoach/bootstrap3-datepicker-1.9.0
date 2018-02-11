#!/bin/bash - 
#===============================================================================
#
#          FILE: setup-locales.sh
# 
#         USAGE: ./setup-locales.sh 
# 
#   DESCRIPTION: Setup Meteor packages for each locale, according to locales.cfg
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rajit Singh
#  ORGANIZATION: ---
#       CREATED: 16/06/2015 10:42
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cat locales.cfg | while read -r locale; do
  locale_description=$(echo "$locale" | cut -f 1)
  locale_id=$(echo "$locale" | cut -f 2)
  meteor_locale_id=$(echo "$locale_id" | awk '{print tolower($0)}')

  if [ ! -d locales/$locale_id ]; then
    mkdir locales/$locale_id
  fi

  # copy file:
  #  - from bootstrap-datepicker git submodule
  #  - to Meteor locale package location
  cp core/lib/bootstrap-datepicker/dist/locales/bootstrap-datepicker.$locale_id.min.js locales/$locale_id/

  cat > locales/$locale_id/README.md <<EOL
bootstrap3-datepicker-$meteor_locale_id
============

Meteor packaging of $locale_description translation of uxsolutions/bootstrap-datepicker

This package is MIT Licensed. Do whatever you like with it but any responsibility for doing so is your own.

All rights to uxsolutions/bootstrap-datepicker are with the original author

Example
============
In your handlebars template:

    <input type="text" class="form-control" id="my-datepicker">

In client-side JS code:

    Template.mytemplate.rendered=function() {
    	\$('#my-datepicker').datepicker({
        language: '$locale_id'
      });
    }

See http://uxsolutions.github.io/bootstrap-datepicker/ for more
EOL

  # create package.js for $locale_description and $locale_id
  cat > locales/$locale_id/package.js <<EOL
Package.describe({
  name: "rajit:bootstrap3-datepicker-$meteor_locale_id",
  git: "https://github.com/rajit/bootstrap3-datepicker.git",
  summary: "Meteor packaging of $locale_description translation of uxsolutions/bootstrap-datepicker",
  version: "1.7.1",
  documentation: 'README.md'
});

Package.onUse(function (api) {
  api.versionsFrom('0.9.0');
  api.use('jquery', 'client');
  api.use('rajit:bootstrap3-datepicker@1.7.1', 'client');
  api.addFiles('bootstrap-datepicker.$locale_id.min.js', 'client');
});
EOL

done
