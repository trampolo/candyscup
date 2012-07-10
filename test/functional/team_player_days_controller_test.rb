require 'test_helper'

class TeamPlayerDaysControllerTest < ActionController::TestCase
  setup do
    @team_player_day = team_player_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_player_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_player_day" do
    assert_difference('TeamPlayerDay.count') do
      post :create, team_player_day: {  }
    end

    assert_redirected_to team_player_day_path(assigns(:team_player_day))
  end

  test "should show team_player_day" do
    get :show, id: @team_player_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_player_day
    assert_response :success
  end

  test "should update team_player_day" do
    put :update, id: @team_player_day, team_player_day: {  }
    assert_redirected_to team_player_day_path(assigns(:team_player_day))
  end

  test "should destroy team_player_day" do
    assert_difference('TeamPlayerDay.count', -1) do
      delete :destroy, id: @team_player_day
    end

    assert_redirected_to team_player_days_path
  end
end
