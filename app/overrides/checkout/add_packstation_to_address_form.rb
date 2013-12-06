Deface::Override.new(:virtual_path => 'spree/checkout/_address',
                     :name => 'add_packstation_to_address_form',
                     :insert_after => '[data-hook="use_billing"]',
                     :partial => 'spree/checkout/packstation')
