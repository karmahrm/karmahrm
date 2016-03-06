require 'rails_helper'

RSpec.describe 'announcements/index', type: :view do
  before(:each) do
    assign(:announcements, [
             Announcement.create!(
               title: 'Title',
               content: 'MyText',
               attachments_count: 1,
               limit_to_users: 'MyText'
             ),
             Announcement.create!(
               title: 'Title',
               content: 'MyText',
               attachments_count: 1,
               limit_to_users: 'MyText'
             )
           ])
  end

  it 'renders a list of announcements' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 1.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
