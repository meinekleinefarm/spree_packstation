class AddPostNumberAndStationNumberToAddresses < ActiveRecord::Migration
  def self.up
    change_table :spree_addresses do |t|
      t.string  :station_number
      t.string  :locker_number
    end
  end

  def self.down
    change_table :spree_addresses do |t|
      t.remove :locker_number
      t.remove :station_number
    end
  end
end
