class AnnouncementComment < Comment
  validates :content, presence: true
end
