require 'date'

class Show

  def name
    @name
  end

  def date
    @date
  end

  def ticket
    @ticket
  end

  def initialize(name)
    @name = name
    @date = consult_ticketing_registry
  end

  def consult_ticketing_registry
    Date.today + rand(50)
  end

  def set_ticket(ticket)
    @ticket = ticket
  end

end