require 'test_helper'

class ContratantesControllerTest < ActionController::TestCase
  setup do
    @contratante = contratantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contratantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contratante" do
    assert_difference('Contratante.count') do
      post :create, contratante: { contato: @contratante.contato, email: @contratante.email, endereco: @contratante.endereco, nome: @contratante.nome, user_id: @contratante.user_id }
    end

    assert_redirected_to contratante_path(assigns(:contratante))
  end

  test "should show contratante" do
    get :show, id: @contratante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contratante
    assert_response :success
  end

  test "should update contratante" do
    patch :update, id: @contratante, contratante: { contato: @contratante.contato, email: @contratante.email, endereco: @contratante.endereco, nome: @contratante.nome, user_id: @contratante.user_id }
    assert_redirected_to contratante_path(assigns(:contratante))
  end

  test "should destroy contratante" do
    assert_difference('Contratante.count', -1) do
      delete :destroy, id: @contratante
    end

    assert_redirected_to contratantes_path
  end
end
