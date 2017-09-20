# Bitcoin Payable Demo for Rails 5.1

A demo for accepting donations using [bitcoin_payable](https://github.com/Sailias/bitcoin_payable)

## Setup

* bundle install
* populate `config/initializers/bitcoin_payable.rb`
* bundle exec rake bitcoin_payable:process_prices
* bundle exec rake db:migrate
* rails s