module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      puts 'SUBSCRIBED', current_user.id
      stream_from 'channel'
    end

    def unsubscribed; end
  end
end
