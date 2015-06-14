FactoryGirl.define do
  factory :bike_rack do
    name "Test Bike Rack"
    address "Test Bike Rack Address"
    city "Washington"
    state "DC"
    zip_code 20001
    count 10
    type "Unknown"
    latitude 38.904722
    longitude -77.016389
  end

  factory :metro_center_bike_rack, parent: :bike_rack do
    name "Metro Center Metro Station"
    address "607 13th St. NW"
    zip_code 20005
    count 8
    latitude 38.898296
    longitude -77.029668
  end

  factory :farragut_north_bike_rack, parent: :bike_rack do
    name "Farragut North Metro Station"
    address "1001 Connecticut Avenue NW"
    zip_code 20036
    count 8
    latitude 38.902654
    longitude -77.039444
  end

  factory :columbia_heights_bike_rack, parent: :bike_rack do
    name "Columbia Heights Metro Station"
    address "3030 14th St. NW"
    zip_code 20009
    count 4
    latitude 38.928689
    longitude -77.032610
  end

  factory :westchester_ave_bike_rack, parent: :bike_rack do
    name "1619 Westchester Ave"
    address "1619 Westchester Ave"
    city "Bronx"
    state "NY"
    zip_code 10472
    count 1
    latitude 40.8295586850
    longitude -73.8746687361
  end

end
