class Member < ActiveRecord::Base
  attr_accessible :email, :first_name, :joined, :last_name
end
