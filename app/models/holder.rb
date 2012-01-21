class Holder < ActiveRecord::Base
  belongs_to :tin

	image_accessor :pic
end
