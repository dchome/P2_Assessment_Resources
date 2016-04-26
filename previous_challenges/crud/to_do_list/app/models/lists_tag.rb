class ListsTag < ActiveRecord::Base
  belongs_to :list
  belongs_to :tag
end
