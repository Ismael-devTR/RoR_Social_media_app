# == Schema Information
#
# Table name: sights
#
#  id            :bigint           not null, primary key
#  activity_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  place_id      :bigint           not null
#
# Indexes
#
#  index_sights_on_place_id  (place_id)
#
# Foreign Keys
#
#  fk_rails_...  (place_id => places.id)
#
class Sight < ApplicationRecord
  # belongs_to :place
  
  ACTIVITY_TYPES = [
    "checkin",
    "checkout"
  ].freeze


  validates :activity_type, presence: true, inclusion: { in: ACTIVITY_TYPES}
end
