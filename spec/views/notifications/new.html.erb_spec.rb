require 'rails_helper'

RSpec.describe 'notifications/new', type: :view do
  before(:each) do
    assign(:notification, Notification.new)
  end

  it 'renders new notification form' do
    render

    assert_select 'form[action=?][method=?]', notifications_path, 'post' do
    end
  end
end
