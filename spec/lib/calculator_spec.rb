require '../../lib/calculator'
require '../../lib/usage'

describe Calculator do

  let(usage) do
    usage_attrs = {}
    usage_attrs[:usage] = ""
    usage_attrs[:pulley_diameter] = ""
    usage_attrs[:ambient_temp] = ""
    usage_attrs[:material_temp] = ""
    Usage.new(usage_attrs)
  end

  subject { described_class.new }

  it "calculates for the ply" do
    subject.should_receive(:calculate_ply_count)
    subject.should_calculate_tensile_rating
    subject.calculate_ply_count

    subject.calculate.should_be_an_instance_of Hash
  end

  context "#calculate_ply_count" do
    let (:usage) { usage = mock_model(Usage, pulley_diameter: "12") }
    it { pending }
  end

  context "#calculate_tensile_rating" do
    let (:usage) { usage = mock_model(Usage, pulley_diameter: "12") }
    it { pending }
  end

end
