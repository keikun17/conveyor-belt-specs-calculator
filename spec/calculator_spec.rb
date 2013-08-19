require 'conveyor_belt_specs_calculator/calculator'
require 'conveyor_belt_specs_calculator/usage'

describe Calculator do

  let(:usage) do
    usage_attrs = {}
    Usage.new(usage_attrs)
  end

  subject { puts described_class.class; described_class.new(usage) }

  it "calculates for the ply" do
    subject.should_receive(:calculate_ply_count)
    subject.should_receive(:calculate_tensile_rating)
    subject.should_receive(:calculate_minimum_pulley_diameter)

    subject.calculate.should be_an_instance_of(Hash)
  end

  describe "#calculate_ply_count" do
    it { pending }
  end

  describe "#calculate_tensile_rating" do
    it { pending }
  end

  describe "#calculate_minimum_pulley_diameter" do

    context "tensile rating is not available" do
      before{ described_class.any_instance.stub(:calculate_tensile_rating).and_return(nil) }

      it "should not compute" do
        expect(subject.calculate_minimum_pulley_diameter).to eq("Cannot compute") 
      end
    end

    context "tensile rating is availabe" do
    end
  end

end
