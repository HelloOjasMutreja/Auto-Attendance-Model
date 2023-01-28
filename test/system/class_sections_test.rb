require "application_system_test_case"

class ClassSectionsTest < ApplicationSystemTestCase
  setup do
    @class_section = class_sections(:one)
  end

  test "visiting the index" do
    visit class_sections_url
    assert_selector "h1", text: "Class sections"
  end

  test "should create class section" do
    visit class_sections_url
    click_on "New class section"

    fill_in "Attendance", with: @class_section.attendance_id
    fill_in "Name", with: @class_section.name
    fill_in "User", with: @class_section.user_id
    click_on "Create Class section"

    assert_text "Class section was successfully created"
    click_on "Back"
  end

  test "should update Class section" do
    visit class_section_url(@class_section)
    click_on "Edit this class section", match: :first

    fill_in "Attendance", with: @class_section.attendance_id
    fill_in "Name", with: @class_section.name
    fill_in "User", with: @class_section.user_id
    click_on "Update Class section"

    assert_text "Class section was successfully updated"
    click_on "Back"
  end

  test "should destroy Class section" do
    visit class_section_url(@class_section)
    click_on "Destroy this class section", match: :first

    assert_text "Class section was successfully destroyed"
  end
end
