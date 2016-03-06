require 'rails_helper'

RSpec.describe 'announcements/edit', type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
                                            title: 'MyString',
                                            content: 'MyText',
                                            attachments_count: 1,
                                            limit_to_users: 'MyText'
    ))
  end

  it 'renders the edit announcement form' do
    render

    assert_select 'form[action=?][method=?]', announcement_path(@announcement), 'post' do
      assert_select 'input#announcement_title[name=?]', 'announcement[title]'

      assert_select 'textarea#announcement_content[name=?]', 'announcement[content]'

      assert_select 'input#announcement_attachments_count[name=?]', 'announcement[attachments_count]'

      assert_select 'textarea#announcement_limit_to_users[name=?]', 'announcement[limit_to_users]'
    end
  end
end
