require 'rubygems'
require 'rspec'
require 'pry-debugger'
require_relative '../rotx.rb'

describe "rotx" do
  it "should return expected encryption" do
    expect(rotx(10, 'Hello, World')).to eq('Rovvy, Gybvn')
  end

  it "should return expected decryption" do
    expect(rotx(10, 'Rovvy, Gybvn', false)).to eq('Hello, World')
  end

  it "rotation numbers greater than 26 should work" do
    expect(rotx(36, 'Hello, World')).to eq('Rovvy, Gybvn')
  end
end
