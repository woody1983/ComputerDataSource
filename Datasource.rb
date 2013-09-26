require 'yaml'

class Datasource
  
  def initialize()
    @dw = YAML.load(File.open('info_price.yml'))
  end

   
  method_arr = ["get_cpu_info","get_cpu_price",
                "get_mouse_info","get_mouse_price",
                "get_memory_info","get_memory_price"]
 
  method_arr.each do |method_ds|
      method_name = method_ds.sub("get_","") #cpu_info
      define_method method_ds.to_sym  do | computer_id |
          @dw[computer_id]["#{method_name}"]
      end
  end
    
end


#-- Debug --#
=begin
ds = Datasource.new
puts ds.get_cpu_info(10001)
puts ds.get_cpu_price(10002)


  def method_missing(name, *args)
      method_name = name.split '_'
      define_method :name do
        @dw[args.first][method_name.last(2).join('_')]
      end
  end


  define_method method_name.to_sym  do | computer_id |
    @dw[computer_id]["cpu_info"]
  end

  define_method :get_cpu_price do | computer_id |
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
 
=end



