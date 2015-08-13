require_relative 'ticket'
class Person

  attr_accessor(:tickets, :name)

  def initialize(name)
    @name = name
    @tickets = []
  end

  def buy_ticket(show)
    @tickets << Ticket.new(show)
  end

  def go_to_show(show_name)
    ticket = find_ticket(show_name)
    ticket.use_ticket
  end

  def unused_tickets
    @tickets.keep_if {|t| t.unused?}
  end

  def find_ticket(show_name)
    @tickets.find {|ticket| ticket.name == show_name}
  end

end