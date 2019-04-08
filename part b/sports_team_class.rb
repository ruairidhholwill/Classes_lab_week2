class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(name)
    @players.push(name)
  end

  def does_player_exist(name)
    return true if @players.include?(name)
  end

def add_point_for_win(result)
  if result == 'win'
    @points += 1
  end
end


end
