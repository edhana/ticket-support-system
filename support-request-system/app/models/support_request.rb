class SupportRequest < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :agent, class_name: "User"
end
