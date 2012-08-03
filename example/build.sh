#!/bin/bash

# PLUGINS
cat js/jQuery.js > js/site.js

# site js files
cat js/application.js >> js/site.js

minifyjs js/site.js > js/site.min.js
echo "done"