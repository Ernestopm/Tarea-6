require 'test_helper'

class TaquillasControllerTest < ActionController::TestCase
  setup do
    @taquilla = taquillas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taquillas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taquilla" do
    assert_difference('Taquilla.count') do
      post :create, taquilla: { comentario: @taquilla.comentario, pelicula: @taquilla.pelicula, valoracion: @taquilla.valoracion }
    end

    assert_redirected_to taquilla_path(assigns(:taquilla))
  end

  test "should show taquilla" do
    get :show, id: @taquilla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taquilla
    assert_response :success
  end

  test "should update taquilla" do
    patch :update, id: @taquilla, taquilla: { comentario: @taquilla.comentario, pelicula: @taquilla.pelicula, valoracion: @taquilla.valoracion }
    assert_redirected_to taquilla_path(assigns(:taquilla))
  end

  test "should destroy taquilla" do
    assert_difference('Taquilla.count', -1) do
      delete :destroy, id: @taquilla
    end

    assert_redirected_to taquillas_path
  end
end
