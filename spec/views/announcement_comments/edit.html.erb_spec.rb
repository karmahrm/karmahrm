require 'rails_helper'

RSpec.describe 'announcement_comments/edit', type: :view do
  before(:each) do
    @announcement_comment = assign(:announcement_comment, AnnouncementComment.create!)
  end

  it 'renders the edit announcement_comment form' do
    render

    assert_select 'form[action=?][method=?]', announcement_comment_path(@announcement_comment), 'post' do
    end
  end
end
