class WishGood < ActiveRecord::Base
  belongs_to :wish
  belongs_to :good
end
