class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def create
    User.create(user_params)
  end

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  has_one :contact
  has_one :profile

  private
  def user_params
    # attr_accessible :email, :password, :password_confirmation, :remember_me, :name
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me)
  end
end
