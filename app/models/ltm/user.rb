module Ltm
  class User < ApplicationRecord
    validates :username, uniqueness: true, presence: :true
    has_many :tags
    has_many :tasks
  end
end
