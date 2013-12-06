require 'spec_helper'

describe Spree::Address do

  # Test spree_address_book's address_decorator.rb.
  context 'Packstation' do
    let(:address) { FactoryGirl.create(:address, station_number: 123, locker_number: 12345678) }
    let(:address2) { FactoryGirl.create(:address) }
    let(:order) { FactoryGirl.create(:order) }
    let(:user) { FactoryGirl.create(:user) }

    before {
      order.bill_address = address2
      order.save
    }

    it 'station number is an attribute of address' do
      address.station_number.should eql 123
    end

    it 'locker number is an attribute of address' do
      address.locker_number.should eql 12345678
    end
  end
end
