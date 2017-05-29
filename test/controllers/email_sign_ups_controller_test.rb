require 'test_helper'

class EmailSignUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_sign_up = email_sign_ups(:one)
  end

  test "should get index" do
    get email_sign_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_email_sign_up_url
    assert_response :success
  end

  test "should create email_sign_up" do
    assert_difference('EmailSignUp.count') do
      post email_sign_ups_url, params: { email_sign_up: { email: @email_sign_up.email, notification: @email_sign_up.notification } }
    end

    assert_redirected_to email_sign_up_url(EmailSignUp.last)
  end

  test "should show email_sign_up" do
    get email_sign_up_url(@email_sign_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_email_sign_up_url(@email_sign_up)
    assert_response :success
  end

  test "should update email_sign_up" do
    patch email_sign_up_url(@email_sign_up), params: { email_sign_up: { email: @email_sign_up.email, notification: @email_sign_up.notification } }
    assert_redirected_to email_sign_up_url(@email_sign_up)
  end

  test "should destroy email_sign_up" do
    assert_difference('EmailSignUp.count', -1) do
      delete email_sign_up_url(@email_sign_up)
    end

    assert_redirected_to email_sign_ups_url
  end
end
