require File.dirname(__FILE__) + '/Datasource'
require File.dirname(__FILE__) + '/Computer'

ds = Datasource.new
#puts ds.get_cpu_info(10001)
cmp = Computer.new(ds)
#puts ds.send(:get_cpu_info, 10001)
puts cmp.cpu 10001
puts cmp.cpu 10001,10002
#name = "cpu"
#puts ds.methods.grep(/^get_(.*)_info/)
