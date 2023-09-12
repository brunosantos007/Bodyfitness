require "test_helper"

class BiotiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biotipo = biotipos(:one)
  end

  test "should get index" do
    get biotipos_url
    assert_response :success
  end

  test "should get new" do
    get new_biotipo_url
    assert_response :success
  end

  test "should create biotipo" do
    assert_difference("Biotipo.count") do
      post biotipos_url, params: { biotipo: { biotipo: @biotipo.biotipo } }
    end

    assert_redirected_to biotipo_url(Biotipo.last)
  end

  test "should show biotipo" do
    get biotipo_url(@biotipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_biotipo_url(@biotipo)
    assert_response :success
  end

  test "should update biotipo" do
    patch biotipo_url(@biotipo), params: { biotipo: { biotipo: @biotipo.biotipo } }
    assert_redirected_to biotipo_url(@biotipo)
  end

  test "should destroy biotipo" do
    assert_difference("Biotipo.count", -1) do
      delete biotipo_url(@biotipo)
    end

    assert_redirected_to biotipos_url
  end
end
