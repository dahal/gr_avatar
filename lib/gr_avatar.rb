require "gr_avatar/version"
require 'digest/md5'

module GrAvatar
	def self.gr_avatar(user_email)
	  	gravatar_id = Digest::MD5.hexdigest(user_email.downcase)
		"http://gravatar.com/avatar/#{gravatar_id}.png"
	end
end