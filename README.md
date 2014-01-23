Spree Ember Example
===================

Spree Ember Example is an example on how to integrate [Spree](http://spreecommerce.com) with [Ember](http://emberjs.com).

Setup
-----

1. Clone the repo:

        $ cd ~/Code
        $ git clone git@github.com:nebulab/spree-ember-example.git
        $ cd spree-ember-example

2. Installed the required gems:

        $ bundle install

3. Create the development database (with example data):

        $ rake db:setup && rake spree_sample:load

3. You're up and running. Just start the server:

        $ rails server

4. Play around with Spree and Ember. Login with your generated
user and visit `http://localhost:3000/ember-shop`.
