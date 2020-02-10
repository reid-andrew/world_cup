class Player

  def initialize(player_info)
    @player_info = player_info
  end

  def name
    @player_info[:name]
  end

  def position
    @player_info[:position]
  end

end
