require 'test_helper'

class MatchTeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get match_teams_show_url
    assert_response :success
  end

  test "should get new" do
    get match_teams_new_url
    assert_response :success
  end

  test "should get edit" do
    get match_teams_edit_url
    assert_response :success
  end

end
