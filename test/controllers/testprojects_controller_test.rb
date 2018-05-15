require 'test_helper'

class TestprojectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testproject = testprojects(:one)
  end

  test "should get index" do
    get testprojects_url
    assert_response :success
  end

  test "should get new" do
    get new_testproject_url
    assert_response :success
  end

  test "should create testproject" do
    assert_difference('Testproject.count') do
      post testprojects_url, params: { testproject: { description: @testproject.description, detail: @testproject.detail, title: @testproject.title, user_id: @testproject.user_id } }
    end

    assert_redirected_to testproject_url(Testproject.last)
  end

  test "should show testproject" do
    get testproject_url(@testproject)
    assert_response :success
  end

  test "should get edit" do
    get edit_testproject_url(@testproject)
    assert_response :success
  end

  test "should update testproject" do
    patch testproject_url(@testproject), params: { testproject: { description: @testproject.description, detail: @testproject.detail, title: @testproject.title, user_id: @testproject.user_id } }
    assert_redirected_to testproject_url(@testproject)
  end

  test "should destroy testproject" do
    assert_difference('Testproject.count', -1) do
      delete testproject_url(@testproject)
    end

    assert_redirected_to testprojects_url
  end
end
