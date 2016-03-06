require 'rails_helper'

RSpec.describe 'announcement_comments/index', type: :view do
  before(:each) do
    assign(:announcement_comments, [
             AnnouncementComment.create!,
             AnnouncementComment.create!
           ])
  end

  it 'renders a list of announcement_comments' do
    render
  end
end
