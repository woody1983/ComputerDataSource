require File.dirname(__FILE__) + '/Datasource'
require File.dirname(__FILE__) + '/Computer'

ds = Datasource.new
#puts ds.get_cpu_info(10001)
cmp = Computer.new(ds)
#puts ds.send(:get_cpu_info, 10001)
#puts cmp.cpu 10001
puts cmp.cpu 10001,10002,10003
=begin
[root@mysql-test-woody ruby]# ruby main.rb
Cpu: i7, ($1700)
* Cpu: A7, ($1999)
Cpu: i5, ($1300)
=end
