class Usage
  attr_accessor :usage, :pulley_diameter,
    :ambient_temp,
    :material_temp,
    :length

  def initialize(h)
    h.each {|k,v| send("#{k}=",v)}
  end
end
