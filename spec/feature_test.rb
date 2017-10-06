require_relative '../lib/oystercard'
require_relative '../lib/journey'
require_relative '../lib/station'

oc = Oystercard.new
oc.top_up(30)
oc.touch_in(Station.new(name: 'station', zone: 1))
oc.touch_out(Station.new(name: 'station', zone: 1))
puts oc.balance
oc.touch_in(Station.new(name: 'station', zone: 1))
oc.touch_in(Station.new(name: 'station', zone: 1))
puts oc.balance
oc.touch_in(Station.new(name: 'station', zone: 1))
oc.touch_out(Station.new(name: 'station', zone: 1))
oc.touch_out(Station.new(name: 'station', zone: 1))
puts oc.balance

oc.touch_in(Station.new(name: 'station', zone: 1))
oc.touch_out(Station.new(name: 'station', zone: 1))
puts oc.balance
