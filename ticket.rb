class Ticket

  attr_reader(:used)

  def initialize(show)
    @show = Show.new(show)
    @used = false
  end

  def unused?
    !used
  end

  def use_ticket
    if valid?
      @used = true
      return true 
    end
    false
  end

  def valid?
    @show.date == todays_date
  end

  def todays_date
    $god_mode ? $todays_date : Date.today
  end
end