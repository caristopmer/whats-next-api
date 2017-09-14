# Unstuck (previously What's Next?)

### An app for simple reflection & self-care

Everyone has had that moment of inertia, when life has dealt you a hand and you're not sure which card to play. Maybe you're in bed, staring at the ceiling. Maybe you just moved to a new city, and leaving your apartment feels like too much just yet. Or maybe life is great, and you want to celebrate somehow.

The Unstuck API transforms the power of [Emoj](https://medium.com/@dannyfreed/today-im-launching-emoj-an-api-that-can-interpret-emotion-from-a-text-based-conversation-6b2ea3fa98b) to analyze your emotional state and chooses an array of small, manageable, low-stakes activities that might make your day a little brighter, or start you on the right direction for what comes after.

Future steps include adding user registration for tracking emotional state over time.

#### Versions and Dependencies

- Built in Ruby 2.4.1 on Rails 5.1.2

- Database: PostgreSQL 0.18

- The rack-cors gem for allowing post requests


Use the Rake command `bundle exec rake db:setup` to get the database up and running. Be sure that the rack-cors gem is uncommented in the Gemfile, as well as the `insert_before` method in `config/initializers/cors.rb`.

The Unstuck API uses Circle CI and rspec for its testing suite.

#### The Team

- [Rachel Kerner](http://www.github.com/bb8bear)
- [Chris McMenomy](http://www.github.com/caristopmer)
- [Desmond Naranjo](http://www.github.com/dhnaranjo)
- [Kristina Vragovic](http://www.github.com/kvrag)
