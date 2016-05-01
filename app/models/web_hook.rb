class WebHook < ActiveRecord::Base
  belongs_to :resource, polymorphic: true
  belongs_to :user
  validates :url, presence: true, url: true
  include HTTParty
  # HTTParty timeout
  default_timeout 10
  def execute(data)
    parsed_url = URI.parse(url)
    WebHook.post(post_url,
                 body: data.to_json,
                 headers: { 'Content-Type' => 'application/json' },
                 verify: false,
                 basic_auth: auth)
  end
end
