require 'rails_helper'

RSpec.describe 'notifications/edit', type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!)
  end

  it 'renders the edit notification form' do
    render

    assert_select 'form[action=?][method=?]', notification_path(@notification), 'post' do
    end
  end
end
