require 'test_helper'

class RecomendacaosControllerTest < ActionController::TestCase
  setup do
    @recomendacao = recomendacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recomendacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recomendacao" do
    assert_difference('Recomendacao.count') do
      post :create, recomendacao: { contato_prestador: @recomendacao.contato_prestador, prestador: @recomendacao.prestador, satisfacao: @recomendacao.satisfacao, servico: @recomendacao.servico, user_id: @recomendacao.user_id }
    end

    assert_redirected_to recomendacao_path(assigns(:recomendacao))
  end

  test "should show recomendacao" do
    get :show, id: @recomendacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recomendacao
    assert_response :success
  end

  test "should update recomendacao" do
    patch :update, id: @recomendacao, recomendacao: { contato_prestador: @recomendacao.contato_prestador, prestador: @recomendacao.prestador, satisfacao: @recomendacao.satisfacao, servico: @recomendacao.servico, user_id: @recomendacao.user_id }
    assert_redirected_to recomendacao_path(assigns(:recomendacao))
  end

  test "should destroy recomendacao" do
    assert_difference('Recomendacao.count', -1) do
      delete :destroy, id: @recomendacao
    end

    assert_redirected_to recomendacaos_path
  end
end
