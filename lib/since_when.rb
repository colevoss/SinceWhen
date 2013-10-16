require "since_when/version"

module SinceWhen
  def self.time_since date, scope = :month
    days_in_month = [31, date.year%4 == 0 ? 29 : 28 , 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    scope_arr = %w(year month day hour minute second)

    time_string = ""

    if date.class != Date
      unless date.class == DateTime
        date = date.to_datetime
      end
      hour_dif = DateTime.now.hour - date.hour
      minute_dif = DateTime.now.minute - date.minute
      second_dif = DateTime.now.second - date.second
    end

    day_dif = Date.today.day - date.day
    month_dif = Date.today.month - date.month
    year_dif = Date.today.year - date.year

    if second_dif && second_dif < 0
      minute_dif -= 1
      second_dif += 60
    end
    if minute_dif && minute_dif < 0
      hour_dif -= 1
      minute_dif += 60
    end
    if hour_dif && hour_dif < 0
      day_dif -= 1
      hour_dif += 24
    end
    if day_dif < 0
      month_dif -= 1
      day_dif += days_in_month[date.month + 1]
    end
    if month_dif < 0
      year_dif -= 1
      month_dif += 12
    end


    if scope_arr.include?(scope.to_s)
      if year_dif > 0
        time_string << "#{year_dif} #{year_dif > 1 ? 'years' : 'year' }"
      end

      if month_dif > 0
        time_string << " #{month_dif} #{month_dif > 1 ? 'months' : 'month'}"
      end

      unless scope == :month
        if day_dif > 0
          time_string << " #{day_dif} #{day_dif > 1 ? 'days' : 'day'}"
        end
        unless scope == :day
          if hour_dif > 0
            time_string << " #{hour_dif} #{hour_dif > 1 ? 'hours' : 'hour'}"
          end
          unless scope == :hour
            if minute_dif > 0
              time_string << " #{minute_dif} #{minute_dif > 1 ? 'minutes' : 'minute'}"
            end
            unless scope == :minute
              if second_dif > 0
                time_string << " #{second_dif} #{second_dif > 1 ? 'seconds' : 'second'}"
              end
            end
          end
        end
      end
    end


    time_string

  end
end
