require "application_system_test_case"

class BiotiposTest < ApplicationSystemTestCase
  setup do
    @biotipo = biotipos(:one)
  end

  test "visiting the index" do
    visit biotipos_url
    assert_selector "h1", text: "Biotipos"
  end

  test "should create biotipo" do
    visit biotipos_url
    click_on "New biotipo"

    fill_in "Biotipo", with: @biotipo.biotipo
    click_on "Create Biotipo"

    assert_text "Biotipo was successfully created"
    click_on "Back"
  end

  test "should update Biotipo" do
    visit biotipo_url(@biotipo)
    click_on "Edit this biotipo", match: :first

    fill_in "Biotipo", with: @biotipo.biotipo
    click_on "Update Biotipo"

    assert_text "Biotipo was successfully updated"
    click_on "Back"
  end

  test "should destroy Biotipo" do
    visit biotipo_url(@biotipo)
    click_on "Destroy this biotipo", match: :first

    assert_text "Biotipo was successfully destroyed"
  end
end
