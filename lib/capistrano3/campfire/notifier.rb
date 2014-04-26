module Capistrano3
  module Campfire
    class Notifier
      attr_reader :room_id, :driver

      def initialize(room_id, driver)
        @room_id = room_id
        @driver = driver
      end

      def notify(message)
        room = driver.find_room_by_id(room_id)
        room.speak(message)
      end
    end
  end
end
