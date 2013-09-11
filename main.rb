require File.dirname(__FILE__) + '/Datasource'
require File.dirname(__FILE__) + '/Computer'

ds = Datasource.new
puts ds.get_cpu_info(10001)
