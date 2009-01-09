class Work
  def initialize(start='08:30', finish='17:30')
    @start = start
    @finish = finish
    puts "Congratulations, you work the long hours of #{@start} to #{@finish}."
  end

  def isit_home_time_yet?(current_time=Time.now)
    if between_work_hours?(current_time) && between_work_days?(current_time)
      puts "YES!"
    else
      puts "NO!"
    end
  end

  private

  def between_work_hours?(current_time)
    if (current_time.strftime("%H:%M") >= @start) && (current_time.strftime("%H:%M") <= @finish)
      true
    end
  end

  def between_work_days?(current_time)
    if (current_time.strftime("%w") >= "1") && (current_time.strftime("%w") <= "5")
      true
    end
  end
end
