class Team
  attr_reader :team_name, :player, :coach, :team, :points
  attr_writer :team_name, :player, :coach, :team, :points

  def initialize (team_name, name, coach, team, points)
    @name = name
    @player = player
    @coach = coach
    @team = team
    @points = points
  end

  def add_new_player(new_man)
    @team << new_man
  end

  def in_team?(player_name)
    plays_in_team =  @team.include? player_name
    return plays_in_team
  end

  def calculate_points(result)
    @points += 3 if result == "win"
    @points += 0 if result == "lose"
  end

end
