class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "room#{params[:room]}"
  end

  def receive(data)
    # room = Room.find(data["id"])
    # room.update(room_id: data["number"])
    trainer_name = User.find(data['id']).trainer_name
    data['t_name'] = trainer_name
    ActionCable.server.broadcast("room#{params[:room]}", data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
