require "application_system_test_case"

class ContactInformationsTest < ApplicationSystemTestCase
  setup do
    @contact_information = contact_informations(:one)
  end

  test "visiting the index" do
    visit contact_informations_url
    assert_selector "h1", text: "Contact information"
  end

  test "should create contact information" do
    visit contact_informations_url
    click_on "New contact information"

    fill_in "Coordinator", with: @contact_information.coordinator
    fill_in "Email offical", with: @contact_information.email_offical
    fill_in "Mobile", with: @contact_information.mobile
    fill_in "Office phone string", with: @contact_information.office_phone_string
    fill_in "Personal email", with: @contact_information.personal_email
    fill_in "Residence phone", with: @contact_information.residence_phone
    click_on "Create Contact information"

    assert_text "Contact information was successfully created"
    click_on "Back"
  end

  test "should update Contact information" do
    visit contact_information_url(@contact_information)
    click_on "Edit this contact information", match: :first

    fill_in "Coordinator", with: @contact_information.coordinator
    fill_in "Email offical", with: @contact_information.email_offical
    fill_in "Mobile", with: @contact_information.mobile
    fill_in "Office phone string", with: @contact_information.office_phone_string
    fill_in "Personal email", with: @contact_information.personal_email
    fill_in "Residence phone", with: @contact_information.residence_phone
    click_on "Update Contact information"

    assert_text "Contact information was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact information" do
    visit contact_information_url(@contact_information)
    click_on "Destroy this contact information", match: :first

    assert_text "Contact information was successfully destroyed"
  end
end
