require './lib/vehicle'
require './lib/passenger'

describe Vehicle do
    before(:each) do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")    
    end

    it 'exists' do
      expect(@vehicle).to be_a(Vehicle)
    end

    it 'has a year, make, and model' do
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end

    it 'is speeding?' do
        expect(@vehicle.speeding?).to eq(false)
        @vehicle.speed
        expect(@vehicle.speeding?).to eq(true)
    end

    it 'can add and count passengers' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
      @vehicle.add_passenger(@charlie)    
      @vehicle.add_passenger(@jude) 
      @vehicle.add_passenger(@taylor)   
      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    #   expect(@vehicle.num_adults).to eq(2)
    end
end