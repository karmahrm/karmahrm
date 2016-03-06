class AnnouncementCommentsController < ApplicationController
  before_action :set_announcement_comment, only: [:show, :edit, :update, :destroy]

  # GET /announcement_comments
  # GET /announcement_comments.json
  def index
    @announcement_comments = AnnouncementComment.all
  end

  # GET /announcement_comments/1
  # GET /announcement_comments/1.json
  def show
  end

  # GET /announcement_comments/new
  def new
    @announcement_comment = AnnouncementComment.new
  end

  # GET /announcement_comments/1/edit
  def edit
  end

  # POST /announcement_comments
  # POST /announcement_comments.json
  def create
    @announcement = Announcement.find(params[:announcement_id])
    @announcement_comment = @announcement.comments.build(announcement_comment_params)
    @announcement_comment.user = current_user
    respond_to do |format|
      if @announcement_comment.save
        format.html { redirect_to @announcement_comment.origin, notice: 'Announcement comment was successfully created.' }
        format.json { render :show, status: :created, location: @announcement_comment }
        format.js   { render layout: false }
      else
        format.html { render :new }
        format.json { render json: @announcement_comment.errors, status: :unprocessable_entity }
        format.js   {}
      end
    end
  end

  # PATCH/PUT /announcement_comments/1
  # PATCH/PUT /announcement_comments/1.json
  def update
    respond_to do |format|
      if @announcement_comment.update(announcement_comment_params)
        format.html { redirect_to @announcement_comment, notice: 'Announcement comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @announcement_comment }
      else
        format.html { render :edit }
        format.json { render json: @announcement_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announcement_comments/1
  # DELETE /announcement_comments/1.json
  def destroy
    @announcement_comment.destroy
    respond_to do |format|
      format.html { redirect_to announcement_comments_url, notice: 'Announcement comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_announcement_comment
    @announcement_comment = AnnouncementComment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def announcement_comment_params
    params.require(:announcement_comment).permit(:content)
  end
end
