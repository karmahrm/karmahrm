# == Schema Information
#
# Table name: calendar_events
#
#  id                :integer          not null, primary key
#  title             :string
#  description       :text
#  comments          :text
#  start_at          :datetime
#  end_at            :datetime
#  location_name     :string
#  location_address  :text
#  user_id           :integer
#  calendar_event_id :integer
#  context_id        :integer
#  context_type      :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CalendarEventsControllerTest < ActionController::TestCase
  setup do
    @calendar_event = calendar_events(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:calendar_events)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create calendar_event' do
    assert_difference('CalendarEvent.count') do
      post :create, calendar_event: { calendar_event_id: @calendar_event.calendar_event_id, comments: @calendar_event.comments, context_id: @calendar_event.context_id, context_type: @calendar_event.context_type, description: @calendar_event.description, end_at: @calendar_event.end_at, location_address: @calendar_event.location_address, location_name: @calendar_event.location_name, start_at: @calendar_event.start_at, title: @calendar_event.title, user_id: @calendar_event.user_id }
    end

    assert_redirected_to calendar_event_path(assigns(:calendar_event))
  end

  test 'should show calendar_event' do
    get :show, id: @calendar_event
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @calendar_event
    assert_response :success
  end

  test 'should update calendar_event' do
    patch :update, id: @calendar_event, calendar_event: { calendar_event_id: @calendar_event.calendar_event_id, comments: @calendar_event.comments, context_id: @calendar_event.context_id, context_type: @calendar_event.context_type, description: @calendar_event.description, end_at: @calendar_event.end_at, location_address: @calendar_event.location_address, location_name: @calendar_event.location_name, start_at: @calendar_event.start_at, title: @calendar_event.title, user_id: @calendar_event.user_id }
    assert_redirected_to calendar_event_path(assigns(:calendar_event))
  end

  test 'should destroy calendar_event' do
    assert_difference('CalendarEvent.count', -1) do
      delete :destroy, id: @calendar_event
    end

    assert_redirected_to calendar_events_path
  end
end
