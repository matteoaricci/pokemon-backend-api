class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "room#{params[:room]}"
  end

  def receive(data)
    room = Room.find(data["id"])
    room.update(room_id: data["number"])
    ActionCable.server.broadcast("room#{params[:room]}", data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
