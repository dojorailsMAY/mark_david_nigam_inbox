class User < ApplicationRecord
  has_many :records

  has_many :received_records, class_name: 'Record', foreign_key: :receiver_id
  has_many :record_senders, through: :received_records, source: :sender

  has_many :sent_records, class_name: 'Record', foreign_key: :sender_id
  has_many :record_receivers, through: :sent_records, source: :receiver



end
