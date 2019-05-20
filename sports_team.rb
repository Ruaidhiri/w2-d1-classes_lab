class SportsTeam

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

attr_accessor(:team_name, :players, :coach, :points)

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach_name(new_name)
  #   @coach = new_name
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def is_on_team(name)
    @players.include?(name)
  end

  def add_match_result(result)
    result.downcase!
    if result == "win"
      @points += 1
    end
  end

end
