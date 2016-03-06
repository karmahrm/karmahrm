module ConversationsHelper
	 def mailbox_section(title, current_box, opts = {})
 		 opts[:class] = opts.fetch(:class, '')
 		 opts[:class] += ' active' if title.casecmp(current_box).zero?
 		 content_tag :li, link_to(title.capitalize, conversations_path(box: title.downcase)), opts
 	end
end
