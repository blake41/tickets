require 'pry'
require 'pry-nav'

require_relative "person"
require_relative "show"
require_relative "ticket"

person = Person.new("blake")
person.buy_ticket("Notorious BIG")
person.buy_ticket("Katy Perry")
binding.pry
