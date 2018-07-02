class Team
attr_reader :team_name, :player, :coach, :team
attr_writer :team_name, :player, :coach, :team

 def initialize (team_name, name, coach, team)
   @name = name
   @player = player
   @coach = coach
   @team = team
 end

def add_new_player
  @team << "Chris"
return @team.length
end

end
