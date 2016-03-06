# == Schema Information
#
# Table name: candidates
#
#  id                :integer          not null, primary key
#  recruitment_id    :integer
#  first_name        :text
#  last_name         :text
#  address           :text
#  dob_date          :date
#  city              :text
#  state             :text
#  pin_code          :integer
#  home_phone_number :integer
#  mobile            :integer
#  email             :text
#  qualification     :text
#  status            :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create candidate' do
    assert_difference('Candidate.count') do
      post :create, candidate: {}
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test 'should show candidate' do
    get :show, id: @candidate
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @candidate
    assert_response :success
  end

  test 'should update candidate' do
    patch :update, id: @candidate, candidate: {}
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test 'should destroy candidate' do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
