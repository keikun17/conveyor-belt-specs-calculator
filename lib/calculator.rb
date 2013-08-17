class Calculator
  attr_accessor :usage

  def intialize(usage)
    @usage = usage
  end

  def calculate
    calculation ={
      tensile: calculate_tensile_rating,
      ply: calculate_ply_count
    }
    calculation
  end

  def calculate_tensile_rating
  end

  # Recommended ply count :
  #   FOR EP100
  #     12in or 304.8mm
  #     16in or 406.4mm
  #   FOR EP150
  #     16in or 406.4mm
  #     20in or 508mm
  #   EP 200 - 3P
  #     16in or 406.4mm
  #     22in or 558.8mm
  def calculate_ply_count
  end

end
