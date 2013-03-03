Seeds Company
=============

This is a Rails app to both manage a seed bank and distribute (sell) seeds/plant material.
Currently, the seed bank side of things is working well. The storefront is not far behind.
At this stage, if you want to keep track of your seeds, go for it. If you're looking for a shop, hang in there.

Why?
----

I noticed that many seeds companies and distributors are using antiquated and/or obfuscated applications for managing
their collections (e.g. the USDA's <a href="http://www.ars-grin.gov/npgs/aboutgrin.html">GRIN</a>, and Fedco Seeds).
Still more collections aren't even digitized. By creating this, I hope to give seed savers a free, simple way to organize their collections.

Getting Started
---------------

You'll need Ruby 1.9.3 or higher, and PostgreSQL.

1. bundle
2. bundle exec rake db:create:all
3. bundle exec rake db:migrate

For user management (verifying accounts/forgotten passwords et al.), you'll want to configure your mailer settings. See more on this at <a href="https://github.com/plataformatec/devise">Devise</a>.

All set up? Good. Now register a user and add a seed.

Adding a seed requires pretty minimal information, like the common name and variety of the plant (e.g. Tomato, Peacevine, respectively). You can also add botanical information like genus, species, and sub-species. For your records, you might add information about how you acquired the material. For all else, you can use the notes field. If there are particular fields that you would like to see standardized/searchable, let me know.

Now, you'll notice at the bottom of the form a link that reads 'Add New Packet Size'. From here, you can group your material into packets/units for distribution (e.g. 1/4 oz packets), list the quantity available, and add a unit price (if applicable). You can add as many units as you need. 
