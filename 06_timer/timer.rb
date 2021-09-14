class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remaining = @seconds%3600
    sprintf("%02d:%02d:%02d", hours, remaining/60, remaining%60)
  end

end
