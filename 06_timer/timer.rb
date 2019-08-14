class Timer
  def initialize
  	@seconds = 0
    @ss = "00"
    @mm = "00"
    @hh = "00"
  end

  def seconds
  	@seconds
  end

  def seconds=(seconds)
  	@seconds = seconds
  end
  
  def changeSeconds (s)
    if (s < 10)
      @ss = "0#{s}"
  	elsif (s >= 10 && s < 60)
      @ss = s
  	end
  end
    
  def changeMinutes (m)
    if (m < 10)
      @mm = "0#{m}"
  	elsif (m >= 10 && m < 60)
      @mm = m
  	end
  end
  
  def changeHours (h)
      if (h < 10)
      @hh = "0#{h}"
  	elsif (m >= 10 && m < 60)
      @hh = h
 	end
  end
    
  def time_string 
  	  hour =  (@seconds / 3600).abs
      minute = (@seconds / 60).abs - (60 * hour)
      second = @seconds - ((@seconds / 60).abs * 60)
    changeSeconds(second)
    changeMinutes(minute)
    changeHours(hour)
    
    return "#{@hh}:#{@mm}:#{@ss}"
      
  end
end