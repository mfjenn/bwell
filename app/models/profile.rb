class Profile < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :comments, :email, :first_name, :last_name, :state, :zip
end
