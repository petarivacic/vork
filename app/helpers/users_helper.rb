module UsersHelper
	
	def gravatar_for(user, options = { size: 20 })
    	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    	size = options[:size]
    	gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    	image_tag(gravatar_url, alt: user.full_name, class: "gravatar img-rounded")
  	end
end
