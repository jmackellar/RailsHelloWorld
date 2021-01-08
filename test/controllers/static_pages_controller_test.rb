require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @baseTitle = 'Jesse MacKellar'
  end
  
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@baseTitle}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@baseTitle}"
  end
  
  test "should get about" do
    get static_pages_about_url 
    assert_response :success 
    assert_select "title", "About | #{@baseTitle}"
  end
  
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@baseTitle}"
  end
  
  test "should get work" do
    get static_pages_work_url 
    assert_response :success 
    assert_select "title", "Work | #{@baseTitle}"
  end
  
end
