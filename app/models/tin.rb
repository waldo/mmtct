class Tin < ActiveRecord::Base
	has_many :holders
	before_create :set_code

	def set_code
		self[:code] ||= Digest::SHA1.hexdigest("1$#{rand(1_000_000_000)}").slice(0..7)
	end
	private :set_code
end
