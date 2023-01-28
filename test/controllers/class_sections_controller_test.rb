require "test_helper"

class ClassSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_section = class_sections(:one)
  end

  test "should get index" do
    get class_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_class_section_url
    assert_response :success
  end

  test "should create class_section" do
    assert_difference("ClassSection.count") do
      post class_sections_url, params: { class_section: { attendance_id: @class_section.attendance_id, name: @class_section.name, user_id: @class_section.user_id } }
    end

    assert_redirected_to class_section_url(ClassSection.last)
  end

  test "should show class_section" do
    get class_section_url(@class_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_section_url(@class_section)
    assert_response :success
  end

  test "should update class_section" do
    patch class_section_url(@class_section), params: { class_section: { attendance_id: @class_section.attendance_id, name: @class_section.name, user_id: @class_section.user_id } }
    assert_redirected_to class_section_url(@class_section)
  end

  test "should destroy class_section" do
    assert_difference("ClassSection.count", -1) do
      delete class_section_url(@class_section)
    end

    assert_redirected_to class_sections_url
  end
end
