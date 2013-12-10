Spree::Address.class_eval do

  attr_accessible :station_number, :locker_number

  validates :station_number, :locker_number, presence: true, if: :packstation?

  private

  def packstation?
    address1 == 'Packstation'
  end

end