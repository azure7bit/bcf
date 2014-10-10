require 'test_helper'

class BuyersControllerTest < ActionController::TestCase
  setup do
    @buyer = buyers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buyers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buyer" do
    assert_difference('Buyer.count') do
      post :create, buyer: { city: @buyer.city, company: @buyer.company, company_address: @buyer.company_address, country: @buyer.country, email: @buyer.email, fax: @buyer.fax, gender: @buyer.gender, job_title: @buyer.job_title, mobile: @buyer.mobile, name: @buyer.name, postal_code: @buyer.postal_code, telp: @buyer.telp, website: @buyer.website }
    end

    assert_redirected_to buyer_path(assigns(:buyer))
  end

  test "should show buyer" do
    get :show, id: @buyer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buyer
    assert_response :success
  end

  test "should update buyer" do
    patch :update, id: @buyer, buyer: { city: @buyer.city, company: @buyer.company, company_address: @buyer.company_address, country: @buyer.country, email: @buyer.email, fax: @buyer.fax, gender: @buyer.gender, job_title: @buyer.job_title, mobile: @buyer.mobile, name: @buyer.name, postal_code: @buyer.postal_code, telp: @buyer.telp, website: @buyer.website }
    assert_redirected_to buyer_path(assigns(:buyer))
  end

  test "should destroy buyer" do
    assert_difference('Buyer.count', -1) do
      delete :destroy, id: @buyer
    end

    assert_redirected_to buyers_path
  end
end
