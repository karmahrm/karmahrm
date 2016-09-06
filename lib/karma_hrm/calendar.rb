module KarmaHrm
  class Calendar
    def initialize(date = Time.zone.today)
      @date = date
    end

    def to_a
      CalendarWeek.new(@date).to_a.map do |week|
        week.map do |date|
          [date, DayStyles.new(date).to_s, events_for(date)]
        end
      end
    end

    private

    def css_classes_for(date)
      [past(date), other_month(date)].compact.join(' ')
    end

    # FIXME: this logic requires db call for each day !!
    def events_for(date)
      CalendarEvent.on_day(date)
    end
  end
  class DayStyles
    def initialize(date)
      @date = date
    end

    def to_s
      [past, other_month, future, today].compact.join(' ')
    end

    private

    def past
      'past' if @date < Time.zone.today
    end

    def future
      'future' if @date > Time.zone.today
    end

    def today
      'today' if @date == Time.zone.today
    end

    def other_month
      'other-month' if @date.month != Time.zone.today.month
    end
  end
  class CalendarWeek
    def initialize(date = Time.zone.today)
      @date = date
    end

    def to_a
      (first_calendar_day..last_calendar_day).to_a.in_groups_of(7)
    end

    private

    def first_calendar_day
      @date.beginning_of_month.beginning_of_week(:sunday)
    end

    def last_calendar_day
      @date.end_of_month.end_of_week(:sunday)
    end
  end
end
