require 'yaml'

class Datasource
  
  def initialize()
    @dw = YAML.load(File.open('info_price.yml')) 
  end

  def get_cpu_info(computer_id)
    @dw[computer_id]["cpu_info"]
  end

  def get_cpu_price(computer_id)
    @dw[computer_id]["cpu_price"]
  end

  def get_mouse_info(computer_id)
    @dw[computer_id]["mouse_info"]
  end

  def get_mouse_price(computer_id)
    @dw[computer_id]["mouse_price"]
  end

  def get_memory_info(computer_id)
    @dw[computer_id]["memory_info"]
  end

  def get_memory_price(computer_id)
    @dw[computer_id]["memory_price"]
  end
end


#-- Debug --#
=begin
ds = Datasource.new
puts ds.get_cpu_info(10001)
puts ds.get_cpu_price(10002)
=end
