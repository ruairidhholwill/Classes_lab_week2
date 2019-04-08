require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class')

class TestSportsTeam < MiniTest::Test

def test_team_name
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  assert_equal('Codies', team.get_name)
end

def test_player_names
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  assert_equal(['Ben','Ru'],team.get_players_names)
end

def test_coach_name
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  assert_equal('Alex',team.get_coach_name)
end

def test_set_coach_name
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  team.set_coach_name('Jon')
  assert_equal('Jon',team.get_coach_name)
end







end
