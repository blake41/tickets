require_relative 'ticket'
class Person

  attr_reader(:tickets)

  def initialize(name)
    @name = name
    @tickets = []
  end

  def buy_ticket(show_name)
    ticket = Ticket.new(show_name)
    tickets << ticket
    ticket.set_person(self)
  end

  def used_tickets
    tickets.keep_if {|ticket| ticket.used}
  end

  def go_to_show(show_name)
    ticket = find_ticket(show_name)
    ticket.use_ticket
  end

  def unused_tickets
    tickets - used_tickets
  end

  def find_ticket(name)
    @tickets.find do |ticket|
      ticket.name == name
    end
  end

end