require 'date'

class Show

  attr_accessor(:date, :name)

  def initialize(name)
    @name = name
    @date = consult_ticketing_registry
  end

  def consult_ticketing_registry
    Date.today + rand(50)
  end

end