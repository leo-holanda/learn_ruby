def setTime(seconds)
    minutes = seconds/60
    seconds = seconds%60
    hours = minutes/60
    minutes = minutes%60

    formatted = []
    if hours < 10
        formatted.push("0")
    end
    formatted.push(hours.to_s)    
    formatted.push(":")
    if minutes < 10
        formatted.push("0")
    end
    formatted.push(minutes.to_s)
    formatted.push(":")
    if seconds < 10
        formatted.push("0")
    end
    formatted.push(seconds.to_s)

    formatted.join()
end

class Timer

    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def time_string
        @time_string = setTime(seconds)
    end
end