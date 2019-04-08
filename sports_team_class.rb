class SportsTeam

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
end

def get_name
  @team_name
end

def get_players_names
  @players
end

def get_coach_name
  @coach
end

def set_coach_name(new_coach_name)
  @coach = new_coach_name
end

end
