require 'rubygems'
require 'rspec'
require_relative '../rotx.rb'

describe "rotx" do
  it "should return expected encryption" do
    expect(rotx(10, 'Hello, World')).to eq('Rovvy, Gybvn')
  end

  it "should return expected decryption" do
    expect(rotx(10, 'Rovvy, Gybvn', false)).to eq('Hello, World')
  end

  it "rotation numbers greater than 26 should work on encryption" do
    expect(rotx(36, 'Hello, World')).to eq('Rovvy, Gybvn')
    expect(rotx(62, 'Hello, World')).to eq('Rovvy, Gybvn')
  end

  it "rotation numbers greater than 26 should work on decryption" do
    expect(rotx(36, 'Rovvy, Gybvn', false)).to eq('Hello, World')
    expect(rotx(62, 'Rovvy, Gybvn', false)).to eq('Hello, World')
  end
end
