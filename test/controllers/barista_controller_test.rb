require 'test_helper'

class BaristaControllerTest < ActionController::TestCase
  setup do
    @baristum = barista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baristum" do
    assert_difference('Baristum.count') do
      post :create, baristum: { age: @baristum.age, city: @baristum.city, company: @baristum.company, company_address: @baristum.company_address, country: @baristum.country, email: @baristum.email, fax: @baristum.fax, gender: @baristum.gender, job_title: @baristum.job_title, mobile: @baristum.mobile, name: @baristum.name, postal_code: @baristum.postal_code, telp: @baristum.telp, website: @baristum.website }
    end

    assert_redirected_to baristum_path(assigns(:baristum))
  end

  test "should show baristum" do
    get :show, id: @baristum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baristum
    assert_response :success
  end

  test "should update baristum" do
    patch :update, id: @baristum, baristum: { age: @baristum.age, city: @baristum.city, company: @baristum.company, company_address: @baristum.company_address, country: @baristum.country, email: @baristum.email, fax: @baristum.fax, gender: @baristum.gender, job_title: @baristum.job_title, mobile: @baristum.mobile, name: @baristum.name, postal_code: @baristum.postal_code, telp: @baristum.telp, website: @baristum.website }
    assert_redirected_to baristum_path(assigns(:baristum))
  end

  test "should destroy baristum" do
    assert_difference('Baristum.count', -1) do
      delete :destroy, id: @baristum
    end

    assert_redirected_to barista_path
  end
end
