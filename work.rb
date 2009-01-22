require 'time'

class Work
  def initialize(start='08:30', finish='17:30')
    @start = start
    @finish = finish
  end

  def isit_home_time_yet?(current_time=Time.now)
    if between_work_hours?(current_time) && between_work_days?(current_time)
      "NO!"
    else
      "YES!"
    end
  end

  private

  def between_work_hours?(current_time)
    (current_time.strftime("%H:%M") >= @start) && (current_time.strftime("%H:%M") <= @finish)
  end

  def between_work_days?(current_time)
    (current_time.wday >= 1) && (current_time.wday <= 5)
  end
end
