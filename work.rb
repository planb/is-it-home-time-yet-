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
    # ...
    true
  end

  def between_work_days?(current_time)
    false
  end
end
