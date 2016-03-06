require 'test_helper'

class InterviewControllerTest < ActionController::TestCase
  test 'should get index,show,create,update,new' do
    get :index, show, create, update, new
    assert_response :success
  end
end
