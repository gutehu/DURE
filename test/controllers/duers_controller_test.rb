require 'test_helper'

class DuersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duer = duers(:one)
  end

  test "should get index" do
    get duers_url
    assert_response :success
  end

  test "should get new" do
    get new_duer_url
    assert_response :success
  end

  test "should create duer" do
    assert_difference('Duer.count') do
      post duers_url, params: { duer: { activity: @duer.activity, address: @duer.address, effective: @duer.effective, name: @duer.name, other: @duer.other } }
    end

    assert_redirected_to duer_url(Duer.last)
  end

  test "should show duer" do
    get duer_url(@duer)
    assert_response :success
  end

  test "should get edit" do
    get edit_duer_url(@duer)
    assert_response :success
  end

  test "should update duer" do
    patch duer_url(@duer), params: { duer: { activity: @duer.activity, address: @duer.address, effective: @duer.effective, name: @duer.name, other: @duer.other } }
    assert_redirected_to duer_url(@duer)
  end

  test "should destroy duer" do
    assert_difference('Duer.count', -1) do
      delete duer_url(@duer)
    end

    assert_redirected_to duers_url
  end
end
