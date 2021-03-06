
class User < ActiveRecord::Base
  belongs_to :current_cart, class_name: 'Cart', foreign_key: 'cart_id'
  has_many :carts
  has_many :orders, through: :carts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
