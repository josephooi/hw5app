require 'spec_helper'

describe Singer do
  it "should require name" do
    subject.should_not be_valid
    subject.name = "Dan Carsello"
    subject.should be_valid
  end


end
