class Computer

 # instance_methods.each do |m|
 #   undef_method m unless m.to_s =~ /^__|method_missing|respond_to?|class|methods|object_id/
 # end

  def initialize(data_source)
    #@pc_id = computer_id
    @data_source = data_source
  end

  def method_missing(name, *args)
      super if !respond_to?(name)
      puts "#{name}, args: #{args}"
      info = @data_source.send "get_#{name}_info", args[0]
      price = @data_source.send "get_#{name}_price", args[0]
      result = "#{name.capitalize}: #{info}, ($#{price})"
      return result = "* #{result}" if price > 1000
      result
  end

  def respond_to?(method)
    @data_source.respond_to?("get_#{method}_info") || super
  end

end
