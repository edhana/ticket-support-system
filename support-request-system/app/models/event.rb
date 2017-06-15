class Event < ApplicationRecord
  belongs_to :support_request
  belongs_to :support_request_status
end
