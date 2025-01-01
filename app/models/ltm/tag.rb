module Ltm
  class Tag < ApplicationRecord
    belongs_to :ltm_user, optional: true
    has_one :user
    has_many :tasks
  end
end
