require "test_ish/version"

module TestIsh
  class Numeric
    def ish(acceptable_delta=0.001)
      ApproximateValue.new self, acceptable_delta
    end
  end
  class ApproximateValue
    def initialize(me, acceptable_delta)
      @me = me
      @acceptable_delta = acceptable_delta
    end
     
    def ==(other)
      (other - @me).abs < @acceptable_delta
    end
     
    def to_s
      "within #{@acceptable_delta} of #{@me}"
    end
  end

  class Time
    def ish
      ApproxTime.new(self)
    end
  end
  class ApproxTime
    def initialize(t); @time = t; end
    def ==(o)
      return false if @time.nil? or o.nil?
      (@time - o).abs < 5
    end
  end
end
