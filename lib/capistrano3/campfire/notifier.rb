module Capistrano3
  module Campfire
    class Notifier
      attr_reader :driver

      def initialize(driver)
        @driver = driver
      end

      def notify(message)
        driver.speak(message)
      end
    end
  end
end
