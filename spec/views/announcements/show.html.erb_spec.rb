require 'rails_helper'

RSpec.describe 'announcements/show', type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
                                            title: 'Title',
                                            content: 'MyText',
                                            attachments_count: 1,
                                            limit_to_users: 'MyText'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
