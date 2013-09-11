class Computer

  def initialize(computer_id,data_source)
    @pc_id = computer_id
    @data_source = data_source
    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method(name) {
      info = @data_source.send "get_#{name}_info", @pc_id
      price = @data_source.send "get_#{name}_price", @pc_id
      result = "#{name.capitalize}: #{info}, ($#{price})"
      return result = "* #{result}" if price > 1000
      result
    }
  end

end
