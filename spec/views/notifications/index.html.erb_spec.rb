require 'rails_helper'

RSpec.describe 'notifications/index', type: :view do
  before(:each) do
    assign(:notifications, [
             Notification.create!,
             Notification.create!
           ])
  end

  it 'renders a list of notifications' do
    render
  end
end
