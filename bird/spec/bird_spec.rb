require 'bird'

describe Bird do 
  #Bird tests here
  let(:bird_1) { Bird.new("Billy")}
  let(:bird_3) { Bird.new("Zullu")}
  let(:bird_5) { Bird.new("Sally")}

  describe "#initialize" do
    context "Bird is created" do
    	it "creates a new Bird" do
    	  expect(bird_1). to be_an_instance_of Bird
    	end
    	it "created Bird has name" do
    	  expect(bird_3.name).to eq("Zullu")
        end
    end
  end

  describe "#jump" do
  	context "Sends message when jump" do
  	  it "sends message 'Saltando...' when jump" do
  	    expect(bird_5.jump).to eq("Saltando...")
  	  end
  	end
  end

  describe "#fly" do
    context "Checks if sends any message" do
      it "when distance to fly is Zero" do
      	expect(bird_1.fly).to eq("Volando 0 mts...")
      end
      it "when distance to fly has increased 10 mts" do
      	bird_1.fly(0)
      	expect(bird_1.fly(10)).to eq("Volando 10 mts...")
      end
      it "when distance to fly has increased 20 mts" do
      	bird_1.fly(10)
      	expect(bird_1.fly(20)).to eq("Volando 30 mts...")
      end
    end
  end

  describe "#who_am_i?" do
  	context "Checks if sends any message" do
  	  it "sends message 'Soy un pájaro'" do
  	    expect(Bird.who_am_i?).to eq("Soy un pájaro")
  	  end
  	end
  end
	
end