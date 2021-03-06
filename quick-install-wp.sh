#!/bin/sh

# Latest version of WP
echo "Fetching WordPress...";
curl -O https://wordpress.org/latest.zip;
unzip -q latest.zip;

# remove default shipped themes
echo "Removing the stock wordpress themes...";
rm -rf wordpress/wp-content/themes
mkdir wordpress/wp-content/themes	
	

# Add Roots theme
echo "Fetching Roots...";
curl -O https://github.com/roots/roots/archive/master.zip;
unzip -q master.zip;
mv roots-master roots
mv roots wordpress/wp-content/themes/


# Simple Custom Post Order
echo "Fetching Simple Custom Post Order...";
curl -O http://downloads.wordpress.org/plugin/simple-custom-post-order.latest-stable.zip;
unzip -q simple-custom-post-order.latest-stable.zip;
mv simple-custom-post-order wordpress/wp-content/plugins/

# Simple Add Pages or Posts
echo "Fetching Simple Add Pages or Posts...";
curl -O http://downloads.wordpress.org/plugin/simple-add-pages-or-posts.zip;
unzip -q simple-add-pages-or-posts.zip;
mv simple-add-pages-or-posts wordpress/wp-content/plugins/

# Pages Children
echo "Fetching Pages Children...";
curl -O http://downloads.wordpress.org/plugin/pages-children.zip;
unzip -q pages-children.zip;
mv pages-children wordpress/wp-content/plugins/

# Wordpress SEO by Yoast - THE best SEO plugin for Wordpress
echo "Fetching Wordpress SEO by Yoast...";
curl -O http://downloads.wordpress.org/plugin/wordpress-seo.zip;
unzip -q wordpress-seo.zip;
mv wordpress-seo wordpress/wp-content/plugins/

# Contact Form 7
echo "Fetching Contact Form 7...";
curl -O http://downloads.wordpress.org/plugin/contact-form-7.zip;
unzip -q contact-form-7.zip;
mv contact-form-7 wordpress/wp-content/plugins/

# Contact Form 7 Honeypot
echo "Fetching Contact Form 7 Honeypot...";
curl -O http://downloads.wordpress.org/plugin/contact-form-7-honeypot.zip;
unzip -q contact-form-7-honeypot.zip;
mv contact-form-7-honeypot wordpress/wp-content/plugins/

# Advanced Custom Fields
echo "Fetching Advanced Custom Fields...";
curl -O http://downloads.wordpress.org/plugin/advanced-custom-fields.zip;
unzip -q advanced-custom-fields.zip;
mv advanced-custom-fields wordpress/wp-content/plugins/

# Custom Post Type UI
echo "Fetching Custom Post Type UI...";
curl -O http://downloads.wordpress.org/plugin/custom-post-type-ui.zip
unzip -q custom-post-type-ui.zip
mv custom-post-type-ui wordpress/wp-content/plugins/

# Better WP security
echo "Fetching Better WP Security...";
curl -O http://downloads.wordpress.org/plugin/better-wp-security.zip
unzip -q better-wp-security.zip
mv better-wp-security wordpress/wp-content/plugins/

# Advanced Access Manager
echo "Fetching Advanced Access Manager...";
curl -O http://downloads.wordpress.org/plugin/advanced-access-manager.zip
unzip -q advanced-access-manager.zip
mv advanced-access-manager wordpress/wp-content/plugins/


# Cleanup
echo "Cleaning up temporary files and directories...";
rm *.zip


# Move stuff into current directory
mv wordpress/* .;
rm -rf wordpress;

# All done
echo "Wordpress has been installed sucessfully!";
