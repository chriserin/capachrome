module Capachrome
  module Error
    class ServerError < StandardError

      def initialize(response)
        if response.kind_of? String
          super(response)
        else
          super("status code #{response.code}")
        end
      end
    end

  end # Error
end # Selenium
