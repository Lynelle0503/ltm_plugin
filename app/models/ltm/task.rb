module Ltm
  class Task < ApplicationRecord
    belongs_to :ltm_user, class_name: 'Ltm::User', optional: true
    belongs_to :ltm_tag, class_name: 'Ltm::Tag', optional: true
    validates :title, presence: true
    # enum status: { in_progress: 'In Progress', completed: 'Completed' }
  end
end
