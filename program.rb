require 'pry'
require 'pry-nav'

require_relative "person"
require_relative "show"
require_relative "ticket"

person = Person.new("blake")
person.buy_ticket("2Pac")
ticket = person.find_ticket("2Pac")
show = ticket.show
binding.pry
