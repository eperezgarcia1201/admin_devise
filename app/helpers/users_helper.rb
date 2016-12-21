module UsersHelper

	def avatar
		image_tag(@user.avatar.url(:thumb), class: "show_user") 
	end

	def date_reg
		time_ago_in_words(@user.created_at)
	end

	def name
		@user.name + " ~ " + @user.last_name
	end

	def correct_user?(user)
		user == current_user
	end
end
