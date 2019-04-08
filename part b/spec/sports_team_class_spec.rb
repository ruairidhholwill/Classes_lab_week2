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

def test_add_new_player
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  team.add_player('Alison')
  assert_equal(['Ben','Ru','Alison'],team.players)
end

def test_does_player_exist?
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  does_exist = team.does_player_exist('Ben')
  assert(does_exist)
end

def test_if_team_won
  team = SportsTeam.new('Codies',['Ben','Ru'],'Alex')
  team.add_point_for_win('win')
  assert_equal(1,team.points)
end





end
