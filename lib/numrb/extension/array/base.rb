module Numrb
  module Extension
    class ::Array

      def mean
        inject { |sum, x| sum + x } / size
      end

      private def valid_element!
        raise InvalidArrayElementsError unless all? { |e| e.is_a?(Numeric) }
      end

    end
  end
end
