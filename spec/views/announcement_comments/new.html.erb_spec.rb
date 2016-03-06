require 'rails_helper'

RSpec.describe 'announcement_comments/new', type: :view do
  before(:each) do
    assign(:announcement_comment, AnnouncementComment.new)
  end

  it 'renders new announcement_comment form' do
    render

    assert_select 'form[action=?][method=?]', announcement_comments_path, 'post' do
    end
  end
end
