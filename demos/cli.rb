require 'geocoder/us/database'
require 'pp'

db = Geocoder::US::Database.new("/mnt/geocoder-us/geocoder.db", :debug=>true)
result = db.geocode(ARGV[0])
pp(result)
print "#{result[0][:lat]} N, #{-result[0][:lon]} W\n"
