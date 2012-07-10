require 'test_helper'

class PlayerDaysControllerTest < ActionController::TestCase
  setup do
    @player_day = player_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_day" do
    assert_difference('PlayerDay.count') do
      post :create, player_day: { goals: @player_day.goals, redcards: @player_day.redcards, vote: @player_day.vote, yellowcards: @player_day.yellowcards }
    end

    assert_redirected_to player_day_path(assigns(:player_day))
  end

  test "should show player_day" do
    get :show, id: @player_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_day
    assert_response :success
  end

  test "should update player_day" do
    put :update, id: @player_day, player_day: { goals: @player_day.goals, redcards: @player_day.redcards, vote: @player_day.vote, yellowcards: @player_day.yellowcards }
    assert_redirected_to player_day_path(assigns(:player_day))
  end

  test "should destroy player_day" do
    assert_difference('PlayerDay.count', -1) do
      delete :destroy, id: @player_day
    end

    assert_redirected_to player_days_path
  end
end
