require "user_contact_helper.rb"

class Contact < ActiveRecord::Base
  belongs_to :user
end
