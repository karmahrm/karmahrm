require 'rails_helper'

RSpec.describe 'announcement_comments/show', type: :view do
  before(:each) do
    @announcement_comment = assign(:announcement_comment, AnnouncementComment.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
