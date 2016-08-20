#!/bin/sh

RUBYPATH=/Users/stay/.rvm/rubies/ruby-1.9.3-head/bin/ruby
GEMPATH=/Users/stay/.rvm/gems/ruby-1.9.3-head/gems
export RUBYPATH
export GEMPATH

MILK_BASE=/Users/stay/.milkode
MILK_COMMAND=/Users/stay/.rvm/gems/ruby-1.9.3-head/bin/milk
${MILK_COMMAND} web -n --host=127.0.0.1 --port=9292 --db=${MILK_BASE} > /dev/null &