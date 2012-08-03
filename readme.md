##MINIFYJS
A really simple way to combine multiple js files then minify using minifyjs and nodejs

##Requirements
1. Have nodejs installed
2. Have minifyjs installed

##Installing nodejs
Go to http://nodejs.org/ and download - follow the steps for install

##Installing minifyjs
Open terminal
<pre>
sudo npm -g install minifyjs
</pre>

##To Use
Place the build.sh script in your root folder and place the js files you wish to combine and minify in the order you want them. Note that when combining use  > for already minified sources and >> for un-minified sources.
<pre>
#!/bin/bash

# PLUGINS
cat js/jQuery.js > js/site.js
cat js/someMinifiedPlugin.js > js/site.js

# site js files
cat js/application.js >> js/site.js
cat js/someJsFile.js >> js/site.js

minifyjs js/site.js > js/site.min.js
echo "done"
</pre>

Now you can edit your js files and when ready CD to your directory and run - 
<pre>
./build.sh
</pre>

#NOTES
if you get an error saying ./build.sh permission denied make sure you're in your current directory and type the following command
<pre>chmod a+x build.sh</pre>