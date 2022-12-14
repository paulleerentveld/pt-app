require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Dob", with: @client.dob
    fill_in "Email", with: @client.email
    fill_in "Firstname", with: @client.firstname
    fill_in "Height", with: @client.height
    fill_in "Instructor", with: @client.instructor_id
    fill_in "Lastname", with: @client.lastname
    fill_in "Mobile", with: @client.mobile
    fill_in "Sex", with: @client.sex
    fill_in "Weight", with: @client.weight
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @client.dob
    fill_in "Email", with: @client.email
    fill_in "Firstname", with: @client.firstname
    fill_in "Height", with: @client.height
    fill_in "Instructor", with: @client.instructor_id
    fill_in "Lastname", with: @client.lastname
    fill_in "Mobile", with: @client.mobile
    fill_in "Sex", with: @client.sex
    fill_in "Weight", with: @client.weight
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
