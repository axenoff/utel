class Request < ApplicationRecord
  has_many :comments, as: :commentable
end
