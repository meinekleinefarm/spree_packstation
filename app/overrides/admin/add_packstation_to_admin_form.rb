Deface::Override.new(:virtual_path => 'spree/admin/shared/_address_form',
                     :name => 'add_packstation_to_admin_form',
                     :insert_bottom => '[data-hook="address_fields"]',
                     :partial => 'spree/admin/packstation_form')
