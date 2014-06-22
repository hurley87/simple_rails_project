class Picture < ActiveRecord::Base
	scope :descending_order, -> { order("created_at DESC") }
	scope :newest_five, -> { descending_order.limit(5) }
end
