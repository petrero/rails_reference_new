# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
  username: "petrero",
  full_name: "Diaconescu Petrisor",
  twitter_name: "petrero",
  avatar_image_name: "batman.jpg",
  url: "http://railscasts.com/",
  bio: <<-BIO
I also work on the following projects.

* [Ticketee](http://github.com/ticketee)
* [Rails Reference](http://github.com/rails-reference)
* [Go vs Go](http://govsgo.com/)

Be sure to check out my [GitHub page](https://github.com/ryanb) for more projects.
BIO
)

User.create(username: "MrMystery")
