require "gr_avatar/version"
require 'digest/md5'

module GrAvatar
	def gravatar
	  gravatar_id = Digest::MD5.hexdigest(self.downcase)
		"http://gravatar.com/avatar/#{gravatar_id}.png"
	end
end

class String
	include GrAvatar
end