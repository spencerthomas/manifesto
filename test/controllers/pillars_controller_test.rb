require 'test_helper'

class PillarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pillar = pillars(:one)
  end

  test "should get index" do
    get pillars_url
    assert_response :success
  end

  test "should get new" do
    get new_pillar_url
    assert_response :success
  end

  test "should create pillar" do
    assert_difference('Pillar.count') do
      post pillars_url, params: { pillar: { image: @pillar.image, income: @pillar.income, name: @pillar.name, time: @pillar.time, user_id: @pillar.user_id, vision: @pillar.vision } }
    end

    assert_redirected_to pillar_url(Pillar.last)
  end

  test "should show pillar" do
    get pillar_url(@pillar)
    assert_response :success
  end

  test "should get edit" do
    get edit_pillar_url(@pillar)
    assert_response :success
  end

  test "should update pillar" do
    patch pillar_url(@pillar), params: { pillar: { image: @pillar.image, income: @pillar.income, name: @pillar.name, time: @pillar.time, user_id: @pillar.user_id, vision: @pillar.vision } }
    assert_redirected_to pillar_url(@pillar)
  end

  test "should destroy pillar" do
    assert_difference('Pillar.count', -1) do
      delete pillar_url(@pillar)
    end

    assert_redirected_to pillars_url
  end
end
