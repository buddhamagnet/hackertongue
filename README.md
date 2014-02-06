## HACKERTONGUE ##

A fun project to retrieve the favourite languages of Github users.

Core piece of work was completed in the [Hublingo gem](https://rubygems.org/gems/hublingo).

Once the gem was complete, decided to create a Rails 4 app to demonstrate the
use of the gem in a running application and also to demonstrate the variety
of tools and approaches I would use when building a real application.

You can also use the gem in irb/pry as follows:

```ruby
require 'hublingo'
hub = Hublingo.new
hub.lingo('buddhamagnet')
```

The Hublingo gem looks for Githiub client ID and secret in environment variables. This app
manages those using dotenv-rails.

I had issues deploying the app to Heroku due to conflicts with the Zurb code, but I like
the way it looks so will expose the local app to the public internet using ngrok.

NOTES:

This whole project, the gem and application, was completed in 3 1/2 hours.

Given more time I would have:

* Written more tests (the Rails app is covered by outside-in Cucumber scenarios).
* Created a JS front end (possibly Ember) to counter lag caused by network latency.