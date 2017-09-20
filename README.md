# Bitcoin Payable Demo for Rails 5.1

A demo for accepting donations using [bitcoin_payable](https://github.com/Sailias/bitcoin_payable)

## Setup

* bundle install
* populate `config/initializers/bitcoin_payable.rb`
* rails g bitcoin_payable:install
* bundle exec rake db:migrate
* bundle exec rake bitcoin_payable:process_prices
* rails s