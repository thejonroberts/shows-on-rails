class TestingChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'testing_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
