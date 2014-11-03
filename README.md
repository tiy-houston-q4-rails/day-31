# Day 31 - Rails Patterns

Covered:

* Devise
* postgres/heroku
* simple_form
* carrier_wave
* Fog / S3 / dotenv for carrierwave on Heroku


Assignment
-------

0. Create a rails project using Postgres
0. Use simple_form and bootstrap/foundation/bourbon to stylize a form for
   content
0. Protect the content in 1 using Devise
0. Publish on heroku


Notes:

####Devise

```bash
rails g devise:install
rails g devise user
rake db:migrate
```
```ruby
before_action :authenticate_user!
```

####Heroku
```ruby
gem "rails_12factor"
gem "pg"
```
