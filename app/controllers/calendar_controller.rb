class CalendarController < ApplicationController
  before_action :authenticate_user!

  def index
    @date = if params[:date].present?
              Date.parse(params[:date])
            else
              Date.today
            end
    @calendar = SimpleHr::Calendar.new(@date).to_a
  end
end
