require 'test_helper'

class TigersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tigers_index_url
    assert_response :success
  end

  test "should get show" do
    get tigers_show_url
    assert_response :success
  end

  test "should get new" do
    get tigers_new_url
    assert_response :success
  end

  test "should get create" do
    get tigers_create_url
    assert_response :success
  end

  test "should get edit" do
    get tigers_edit_url
    assert_response :success
  end

  test "should get update" do
    get tigers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tigers_destroy_url
    assert_response :success
  end

end
