Canonical URL
=============

Canonical URL provides a simple way to utilize the new [Canonical URL Standards][1] adopted by all of the major search engines to improve recognition of duplicated URLs. This allows you to represent information in several different places without harming your search engine rank.

[1]: http://www.seomoz.org/blog/canonical-url-tag-the-most-important-advancement-in-seo-practices-since-sitemaps

Installation
------------

Canonical URL is available both as a gem and as a standard Rails plugin. To install as a gem, add this to your `environment.rb`:

    config.gem 'mbleigh-canonical-url', :source => 'http://gems.github.com'
    
To install as a traditional plugin:

    script/plugin install git://github.com/mbleigh/canonical-url

Usage
-----

The plugin is very simple to use and consists of a controller method and a helper. To set a canonical URL you will first need to add it into your site's layout, like so:

    <html>
      <head>
        ...
        <%= canonical_link_tag %>
        ...
      </head>
      ...
    </html>
    
This will automatically insert a canonical URL tag into every page of your site, defaulting to the request's current URL (it will not output anything when you have not specified a canonical URL through the controller or explicitly through the link tag). Then you can set canonical URLs in the controller as follows:

    class BlogController < ApplicationController
      def show
        @post = find_post # assume this is a standard blog post type record
        canonical_url blog_post_path(post.year, post.month, post.day, post.slug)
      end
    end
    
Now no matter what the routing is that takes you to the post, the canonical URL will remain the same.

Copyright (c) 2009 [Michael Bleigh](http://www.mbleigh.com/) and [Intridea, Inc.](http://www.intridea.com/). See LICENSE for details.
