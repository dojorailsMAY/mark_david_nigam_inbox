class Record < ApplicationRecord
  # has_one :message
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :message
end
