# -*- encoding: utf-8 -*-

module ProgressX
  class State
    attr_accessor :currently_at, :currently_will_finish_at

    def initialize
      @currently_at                 = 0
      @currently_will_finish_at     = 100
    end

    def inc_currently_at(v)
      self.currently_at  += v
    end
    alias :inc :inc_currently_at

    def inc_currently_will_finish_at(v)
      self.inc_currently_will_finish_at += v
    end
    alias :incf :inc_currently_will_finish_at
  end
end