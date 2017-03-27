module UsersHelper

	def avatar(user)
		image_tag(user.avatar.url(:thumb), size: "40x40", alt: user.first_name, class: "nav-avatar")
	end

	def avatar2(user)
		image_tag(user.avatar.url(:medium), size: "120x120", alt: user.first_name)
	end
	
	def avatar3(user)
		image_tag(user.avatar.url(:medium), size: "165x165", alt: user.first_name)
	end
end
