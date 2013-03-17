Seeds Company
=============

This is a Rails app for managing a seed bank (cataloguing and distribution).
Currently, the catalogue and storefront are up. I'm working on
integration with Active Merchant.

Why?
----

I noticed that many seeds companies and distributors are using antiquated and/or obfuscated applications for managing
their collections (e.g. the USDA's <a href="http://www.ars-grin.gov/npgs/aboutgrin.html">GRIN</a>, and Fedco Seeds).
Still more collections aren't even digitized. By creating this, I hope to give seed savers a free, simple way to catalogue.

Getting Started
---------------

You'll need Ruby 1.9.3 or higher, and PostgreSQL.

```ruby
1. git clone https://github.com/spirochete/seeds-company.git
2. bundle
3. bundle exec rake db:create:all
4. bundle exec rake db:migrate
```

For customer management, you'll want to configure your mailer settings. See more on this at <a href="https://github.com/plataformatec/devise">Devise</a>.


Basic Usage
-----------

Navigate to http://yourhostname/seeds.  Register an admin and add a seed.

Adding a seed requires pretty minimal information, like the common name and variety of the plant (e.g. Tomato, Peacevine, respectively). You can also add botanical information like genus, species, and sub-species. For your records, you might add information about how you acquired the material. For all else, you can use the notes field. If there are particular fields that you would like to see standardized/searchable, let me know.

Do you want the seed to be showcased on the front page of the storefront? Check the 'Featured' box.

In the Categories section, you can group the seed in a category that will be displayed on the storefront (e.g. Flowers). A seed can belong to any/all/none, but in terms of accessibility, it's a good idea to link it up to something.

You'll notice at the bottom of the form a link that reads 'Add New Packet Size'. From here, you can group your material into packets/units for distribution (e.g. 1/4 oz packets), list the quantity available, and add a unit price (if applicable). You can add as many units as you need.

Likewise, you can add photos. Uploading a photo will create both a thumbnail and an appropriately-scaled version of the full photo (to edit these options, see app/uploaders/photo_uploader.rb).
