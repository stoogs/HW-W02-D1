require('minitest/autorun')
require_relative('../day1_sports.rb')
require('minitest/rg')

class TestTeam < MiniTest::Test

def test_add_new_player
no1 = Team.new("Ruby Duckies", "Jardine", "Mr. Head Coach",[])
no1.add_new_player
assert_equal(1, @team.length)
end









end
