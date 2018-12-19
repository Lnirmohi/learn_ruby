class Timer
  #write your code here
    attr_accessor :seconds, :time_string

    def initialize
      @seconds = 0
      @time_string = "00:00:00"
    end

    def time_string
      time_array = @time_string.split(":")

      if @seconds >= 3600
        time_array[0] = "%02d" %[seconds/3600]
        @seconds = @seconds%3600
      end

      if @seconds >= 60
        time_array[1] = "%02d" %[seconds/60]
        @seconds = @seconds%60
      end

      time_array[2] = "%02d" %[seconds]

      @time_string = time_array.join(":")
    end   
end