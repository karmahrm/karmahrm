# == Schema Information
#
# Table name: recruitments
#
#  id             :integer          not null, primary key
#  department_id  :integer
#  title          :text
#  content        :text
#  start_date     :date
#  end_date       :date
#  position       :text
#  no_of_openings :integer
#  is_deleted     :boolean          default(FALSE)
#  is_completed   :boolean          default(FALSE)
#  is_published   :boolean          default(FALSE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class RecruitmentsControllerTest < ActionController::TestCase
  setup do
    @recruitment = recruitments(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:recruitments)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create recruitment' do
    assert_difference('Recruitment.count') do
      post :create, recruitment: {}
    end

    assert_redirected_to recruitment_path(assigns(:recruitment))
  end

  test 'should show recruitment' do
    get :show, id: @recruitment
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @recruitment
    assert_response :success
  end

  test 'should update recruitment' do
    patch :update, id: @recruitment, recruitment: {}
    assert_redirected_to recruitment_path(assigns(:recruitment))
  end

  test 'should destroy recruitment' do
    assert_difference('Recruitment.count', -1) do
      delete :destroy, id: @recruitment
    end

    assert_redirected_to recruitments_path
  end
end
