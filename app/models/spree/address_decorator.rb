Spree::Address.class_eval do

  attr_accessible :use_packstation, :station_number, :locker_number

  validates :station_number, length: { :minimum => 3 }, allow_blank: true
  validates :locker_number, length:  { :minimum => 7 }, allow_blank: true

end