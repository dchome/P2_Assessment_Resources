class Task < ActiveRecord::Base
  belongs_to :list
  belongs_to :creator, class_name: "User"

  validates :thing_to_do, presence: true

  def complete?
    self.is_complete
  end

  def mark_complete
    self.is_complete = true
  end

  def mark_incomplete
    self.is_complete = false
  end

  def checkbox
    self.complete? ? "[X]" : "[ ]"
  end
end
