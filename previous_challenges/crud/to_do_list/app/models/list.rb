class List < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :tasks
  has_many :lists_tags
  has_many :tags, through: :lists_tags

  validates :author_id, presence: true

  def complete?
    self.tasks.all?{|task| task.complete?}
  end

  def formatted_created_on
    self.created_at.strftime("%e %b %Y")
  end


  def complete_message
    self.complete? ? "Complete!" : "Incomplete"
  end

  def format_tags
    if self.tags.count > 0
      self.tags.reduce(""){|list, tag| list + "\n #{tag.tag_name}" }
    else
      "untagged"
    end
  end
end
