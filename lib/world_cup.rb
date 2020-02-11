class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_players_by_position = []
    @teams.each do |team|
      if !team.eliminated?
        team.players_by_position(position). each do |player|
          active_players_by_position << player
        end
      end
    end
    active_players_by_position
  end

  def all_players_by_position
    all_players = []
    @teams.each { |team| team.players.each { |player| all_players << player } }
    all_players.group_by { |player| player.position}
  end

end
