require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { player1: @match.player1, player1_score: @match.player1_score, player2: @match.player2, player2_score: @match.player2_score, tournament_id: @match.tournament_id }
    end

    assert_response 201
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should update match" do
    put :update, id: @match, match: { player1: @match.player1, player1_score: @match.player1_score, player2: @match.player2, player2_score: @match.player2_score, tournament_id: @match.tournament_id }
    assert_response 204
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_response 204
  end
end
