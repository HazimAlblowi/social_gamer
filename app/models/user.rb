class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :invitaions, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, presence: true
  validates :username, length: { in: 3..15 }
  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z][a-zA-Z0-9]+\Z/ , 
                                  message: "should start with a letter and there should be no spaces" }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
