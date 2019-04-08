require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class')

class TestSportsTeam < MiniTest::Test

def test_team_name
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  assert_equal('Codies', team.team_name)
end

def test_player_names
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  assert_equal(['Ben','Ru'],team.players)
end

def test_coach_name
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  assert_equal('Alex',team.coach)
end

def test_set_coach_name
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  team.coach=('Jon')
  assert_equal('Jon',team.coach)
end







end
