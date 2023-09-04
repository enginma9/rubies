require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe "testing stock_picker" do
    it "stock_picker([17,3,6,9,15,8,6,1,10])" do
        expect( stock_picker([17,3,6,9,15,8,6,1,10]) ).to eq([1,4])
    end
end


#example from https://www.theodinproject.com/lessons/ruby-stock-picker
#stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  # for a profit of $15 - $3 == $12