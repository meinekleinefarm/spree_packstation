ADDRESS_FIELDS ||= ["firstname", "lastname", "company", "station_number", "locker_number", "address1", "address2", "city", "state", "zipcode", "country", "phone"]

ADDRESS_FIELDS.insert(3, "station_number") unless ADDRESS_FIELDS.include? "station_number"
ADDRESS_FIELDS.insert(4, "locker_number") unless ADDRESS_FIELDS.include? "locker_number"