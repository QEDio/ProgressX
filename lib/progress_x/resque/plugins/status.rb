module ProgressX
  module Resque
    module Plugins
      module Status
        extend ActiveSupport::Concern
        include ProgressX::Status

        module InstanceMethods
          def inc_currently_at(v)
            base_inc_currently_at(v)
            set_state
          end
          alias :inc :inc_currently_at

          def inc_currently_will_finish_at(v)
            base_inc_currently_will_finish_at(v)
            set_state
          end
          alias :incf :inc_currently_will_finish_at

          def currently_at=(v)
            base_currently_at = v
            set_state
          end

          def currently_will_finish_at=(v)
            base_currently_will_finish_at = v
            set_state
          end

          def set_state(text = '')
            at(state.currently_at, state.currently_will_finish_at, text)
          end
        end
      end
    end
  end
end