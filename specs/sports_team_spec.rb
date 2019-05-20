require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    assert_equal("Team 1", team.team_name)
  end

  def test_players
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    assert_equal(["player1", "player2", "player3"], team.players)
  end

  def test_coach
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    assert_equal("Mr Coach", team.coach)
  end

  def test_set_coach_name
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    assert_equal("Miss Coach", team.coach = "Miss Coach")
  end

  def test_add_new_player
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    team.add_new_player("player4")
    assert_equal(["player1", "player2", "player3", "player4"], team.players)
  end

  def test_is_on_team
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    assert_equal(true, team.is_on_team("player3"))
  end

  def test_add_match_result_win
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    team.add_match_result("Win")
    assert_equal(1, team.points)
  end

  def test_add_match_result_loss
    team = SportsTeam.new("Team 1", ["player1", "player2", "player3"], "Mr Coach")
    team.add_match_result("Loss")
    assert_equal(0, team.points)
  end

end
