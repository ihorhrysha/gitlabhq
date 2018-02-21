module Gitlab
  module Ci
    module Pipeline
      module Expression
        class Variable < Expression::Lexeme
          PATTERN = /\$(?<name>\w+)/.freeze

          def initialize(value)
            @value = value
          end

          def evaluate(**variables)
          end
        end
      end
    end
  end
end
