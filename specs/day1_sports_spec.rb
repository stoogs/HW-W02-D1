require('minitest/autorun')
require_relative('../day1_sports.rb')
require('minitest/rg')

class TestTeam < MiniTest::Test

  def test_add_new_player
    no1 = Team.new("Ruby Duckies", "Jardine", "Mr. Head Coach",[], 0)
    no1.add_new_player("Dave")
    team_size = no1.team.length
    assert_equal(1, team_size)
  end

def test_in_team?
  no1 = Team.new("Ruby Duckies", "Jardine", "Mr. Head Coach",[], 0)
  no1.add_new_player("Dave")
  check = no1.in_team?("Dave")
  assert_equal(true, check)
end

def test_calculate_points
  no1 = Team.new("Ruby Duckies", "Jardine", "Mr. Head Coach",[], 0)

  # check for win
  no1.points = 0
  no1.calculate_points("win")
  check = no1.points
  p no1.points
  assert_equal(3, check)

  # check for no win
  no1.points = 0 # Reset
  no1.calculate_points("lose")
  check = no1.points
  p no1.points
  assert_equal(0, check)
end

end #class end
