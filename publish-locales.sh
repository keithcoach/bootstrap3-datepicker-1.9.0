#!/bin/bash - 
#===============================================================================
#
#          FILE: publish-locales.sh
# 
#         USAGE: ./publish-locales.sh 
# 
#   DESCRIPTION: Publish Meteor packages for each locale, according to locales.cfg
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

cflag=
while getopts c name
do
  case $name in
    c) cflag=1;;
  esac
done

if [ -z "$cflag" ]; then
  publish_options=""
else
  publish_options=" --create"
fi

original_pwd=$PWD

# cat <<EOL |
# Arabic-Tunisia	ar-tn
# Bengali	bn
# Breton	br
# Canadian English	en-CA
# Irish English	en-IE
# New Zealand English	en-NZ
# South African English	en-ZA
# Hindi	hi
# Occitan	oc
# Tamil	ta
# Tajik	tg
# Uzbek (cyrillic)	uz-cyrl
# Uzbek (latin)	uz-latn
# EOL
# while read -r locale; do
cat locales.cfg | while read -r locale; do
  locale_description=$(echo "$locale" | cut -f 1)
  locale_id=$(echo "$locale" | cut -f 2)

  cd "$original_pwd/locales/$locale_id"
  meteor publish$publish_options
done
