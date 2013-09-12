class Computer

  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /^__|method_missing|respond_to?|class|methods|object_id/
  end

  def initialize(data_source)
    #@pc_id = computer_id
    @data_source = data_source
  end

  def method_missing(name, *args)
      super if !respond_to?(name)
      puts ">>> #{name}, args: #{args}, args class: #{args.class} and size: #{args.size}"
      
      args.each do |pc_id|
      	info = @data_source.send "get_#{name}_info", pc_id
      	price = @data_source.send "get_#{name}_price", pc_id
      	result = "#{name.capitalize}: #{info}, ($#{price})"
      	return result = "Pc#{pc_id} : * #{result}" if price > 1000
      	result
      end
  end

  def respond_to?(method)
    @data_source.respond_to?("get_#{method}_info") || super
  end

end
