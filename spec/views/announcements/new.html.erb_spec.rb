require 'rails_helper'

RSpec.describe 'announcements/new', type: :view do
  before(:each) do
    assign(:announcement, Announcement.new(
                            title: 'MyString',
                            content: 'MyText',
                            attachments_count: 1,
                            limit_to_users: 'MyText'
    ))
  end

  it 'renders new announcement form' do
    render

    assert_select 'form[action=?][method=?]', announcements_path, 'post' do
      assert_select 'input#announcement_title[name=?]', 'announcement[title]'

      assert_select 'textarea#announcement_content[name=?]', 'announcement[content]'

      assert_select 'input#announcement_attachments_count[name=?]', 'announcement[attachments_count]'

      assert_select 'textarea#announcement_limit_to_users[name=?]', 'announcement[limit_to_users]'
    end
  end
end
