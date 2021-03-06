module Timely
  module Time
    def on_date(year, month = nil, day = nil)
      if year.is_a?(Date)
        date = year
        year, month, day = date.year, date.month, date.day
      end

      raise ArgumentError, "Year, month, and day needed" unless [year, month, day].all?

      ::Time.local(year, month, day, hour, min, sec)
    end

    alias_method :on, :on_date
  end
end

class Time
  include Timely::Time
end

