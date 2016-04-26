class User < ActiveRecord::Base
  has_many :lists, foreign_key: :author_id
  has_many :tasks, foreign_key: :creator_id
  has_many :list_tags, through: :lists
  has_many :used_tags, through: :list_tags, source: :tags

  validates :username, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: {maximum: 30}
  validate :must_have_valid_email

  has_secure_password

  def must_have_valid_email
    unless email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      errors.add(:email, "must be a valid email address")
    end
  end
end
