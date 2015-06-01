require('rspec')
require "pry"
require('parcels')
require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application

describe(Parcel) do
  describe('#height') do
  it("should be able to create a new parcel and specify the height in the arguments.") do
    new_parcel = Parcel.new("3", "4", "5", "10")
    expect(new_parcel.height()).to(eq("3"))
  end
end

describe('#length') do
  it("should be able to create a new parcel and specify the length in the arguments.") do
    new_parcel = Parcel.new("3", "4", "5", "10")
    expect(new_parcel.length()).to(eq("4"))
  end
end

describe('#depth') do
  it("should be able to create a new parcel and specify the depth in the arguments.") do
    new_parcel = Parcel.new("3", "4", "5", "10")
    expect(new_parcel.depth()).to(eq("5"))
  end
end

describe('#weight') do
  it("should be able to create a new parcel and specify the weight in the arguments.") do
    new_parcel = Parcel.new("3", "4", "5", "10")
    expect(new_parcel.weight()).to(eq("10"))
  end
end
end
