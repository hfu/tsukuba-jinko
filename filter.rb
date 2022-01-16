require 'json'

print "面積,人口,名称,コード\n"
while gets
  f = JSON.parse($_)
  kigo_e = f['properties']['KIGO_E']
  next unless kigo_e.nil? or kigo_e == 'E1'
  area = f['properties']['AREA'] / 1000000.0
  population = f['properties']['JINKO']
  s_name = f['properties']['S_NAME']
  key_code = f['properties']['KEY_CODE']
  print "#{area},#{population},#{s_name},#{key_code}\n"
end

