class GameChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
  ActionCable.server.broadcast("game_##{params[:game_id]}", "You have been connected!")
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  ActionCable.server.broadcast("game_##{params[:game_id]}", "You have been disconnected!")
  end
end
