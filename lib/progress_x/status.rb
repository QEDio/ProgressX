module ProgressX
  module Status
    extend ActiveSupport::Concern

    included do
      @state = nil
    end

    module ClassMethods
    end

    module InstanceMethods

      def base_inc_currently_at(v)
        state.inc_currently_at(v)
      end

      def base_inc_currently_will_finish_at(v)
        state.inc_currently_will_finish_at(v)
      end

      def base_currently_at=(v)
        state.currently_at = v
      end

      def base_currently_will_finish_at=(v)
        state.currently_will_finish_at = v
      end

      def currently_at
        state.currently_at
      end

      def currently_will_finish_at
        state.currently_will_finish_at
      end

      def state
        @state ||= ProgressX::State.new
      end
    end
  end
end