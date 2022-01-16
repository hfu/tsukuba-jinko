require 'json'

while gets
  f = JSON.parse($_)
  kigo_e = f['properties']['KIGO_E']
  next unless kigo_e.nil? or kigo_e == 'E1'
  area = f['properties']['AREA'] / 1000000.0
  population = f['properties']['JINKO']
  print "#{area},#{population}\n"
end

