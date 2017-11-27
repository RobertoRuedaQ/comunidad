class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'messages'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	ActionCable.server.broadcast 'chat_channel', data['chat']
  end
end
