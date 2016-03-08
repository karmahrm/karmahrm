class SearchController < ApplicationController
  before_action :authenticate_user!
  def index
    @query = params[:query] || ''
    @users = User.search @query # , execute: false
    @employees = Employee.search @query # , execute: false
    @announcements = Announcement.search @query
    # @responce=Searchkick.multi_search [@users,@employees] || []
  end
end
