module ApplicationHelper
	 def page_header(text)
 		 content_for(:page_header) { text.to_s }
 	end

	 def page_header_description(text)
 		 content_for(:page_header_description) { text.to_s }
 	end

	 def build_breadcrumb(object = nil, *_args)
 		 crumb_key = (controller_name + '_' + action_name).to_sym
 		 breadcrumb crumb_key, object
 	end

	 def current_user_inbox
 		 current_user.mailbox.inbox
 	end

	 def inbox_count
    current_user.mailbox.inbox.count
   end

  def notifications_count
    current_user.notifications.unread.includes(:origin).count
  end

	 def current_users_notifications
 		 current_user.notifications.unread.includes(origin: [:origin])
 	end

	 def add_attachment_link(name)
 	  link_to_function name do |page|
 	    page.insert_html :bottom, :attachments, partial: 'attachment', object: AnnouncementAttachment.new
 	  end
 	end
end
