require 'test_helper'

class TournamentsControllerTest < ActionController::TestCase
  setup do
    @tournament = tournaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tournaments)
  end

  test "should create tournament" do
    assert_difference('Tournament.count') do
      post :create, tournament: { description: @tournament.description, end_date: @tournament.end_date, num_players: @tournament.num_players, num_rounds: @tournament.num_rounds, start_date: @tournament.start_date, title: @tournament.title, winner: @tournament.winner }
    end

    assert_response 201
  end

  test "should show tournament" do
    get :show, id: @tournament
    assert_response :success
  end

  test "should update tournament" do
    put :update, id: @tournament, tournament: { description: @tournament.description, end_date: @tournament.end_date, num_players: @tournament.num_players, num_rounds: @tournament.num_rounds, start_date: @tournament.start_date, title: @tournament.title, winner: @tournament.winner }
    assert_response 204
  end

  test "should destroy tournament" do
    assert_difference('Tournament.count', -1) do
      delete :destroy, id: @tournament
    end

    assert_response 204
  end
end
