class Post < ApplicationRecord
  belongs_to :journal, optional: true
end
