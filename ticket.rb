class Ticket

  def used
    @used
  end

  def person
    @person
  end

  def initialize(show_name)
    @show = Show.new(show_name)
    @show.set_ticket(self)
    @used = false
  end

  def set_person(person)
    @person = person
  end

  def unused?
    !used
  end

  def name
    @show.name
  end

  def use_ticket
    # we must check if the ticket has already been used
    if unused? && valid?
      @used = true
      return true
    end
    false
  end

  def valid?
    @show.date == some_date
  end

  def some_date
    if $god_mode
      return $todays_date
    else
      Date.today
    end
  end

  def date
    @show.date
  end

  def show
    @show
  end



end
