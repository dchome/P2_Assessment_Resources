class Tag < ActiveRecord::Base
  has_many :lists_tags
  has_many :lists, through: :lists_tags

  validates :tag_name, presence: true
end
