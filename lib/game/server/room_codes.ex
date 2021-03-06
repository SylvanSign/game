defmodule Game.Server.RoomCodes do
  def new() do
    file_path()
    |> File.read!()
    |> String.split("\n", trim: true)
    |> Enum.shuffle()
    |> hd()
  end

  defp file_path do
    Path.join(:code.priv_dir(:game), "rooms.txt")
  end
end
