# -*- encoding: utf-8 -*-

module ProgressX
  module Status
    extend ActiveSupport::Concern

    included do
      attr_accessor :att, :limitt
    end

    module ClassMethods
    end

    module InstanceMethods
      def inc(v)
        self.att  += v
        self.att
      end
    end
  end
end