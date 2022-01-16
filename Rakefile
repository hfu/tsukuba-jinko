require './constants'

task :default do
  sh <<-EOS
ogr2ogr -f GeoJSONSeq /vsistdout/ #{SRC_PATH} | \
ruby filter.rb > data.csv
  EOS
end

