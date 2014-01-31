class Picture < ActiveRecord::Base
	scope :newest_first, -> {order("created_at DESC")}
	scope :most_recent_five, -> {order("created_at DESC").limit(5)}
	scope :created_before, ->(time) {where("created_at < ?", time)}
end
