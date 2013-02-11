require 'test_helper'

class VoicePartsControllerTest < ActionController::TestCase
  setup do
    @voice_part = voice_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voice_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voice_part" do
    assert_difference('VoicePart.count') do
      post :create, voice_part: { max: @voice_part.max, name: @voice_part.name }
    end

    assert_redirected_to voice_part_path(assigns(:voice_part))
  end

  test "should show voice_part" do
    get :show, id: @voice_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voice_part
    assert_response :success
  end

  test "should update voice_part" do
    put :update, id: @voice_part, voice_part: { max: @voice_part.max, name: @voice_part.name }
    assert_redirected_to voice_part_path(assigns(:voice_part))
  end

  test "should destroy voice_part" do
    assert_difference('VoicePart.count', -1) do
      delete :destroy, id: @voice_part
    end

    assert_redirected_to voice_parts_path
  end
end
