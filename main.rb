require File.dirname(__FILE__) + '/Datasource'
require File.dirname(__FILE__) + '/Computer'

ds = Datasource.new
#puts ds.get_cpu_info(10001)
new_pc = Computer.new(10001,ds)
#puts ds.send(:get_cpu_info, 10001)
puts new_pc.cpu
puts new_pc.mouse
#name = "cpu"
#puts ds.methods.grep(/^get_(.*)_info/)
