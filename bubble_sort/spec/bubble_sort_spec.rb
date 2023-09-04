require 'spec_helper'
require_relative '../bubble_sort'

RSpec.describe "testing bubble_sort" do
    it "bubble_sort([4,3,78,2,0,2])" do
        expect( bubble_sort([4,3,78,2,0,2]) ).to eq([0,2,2,3,4,78])
    end
end

#example from https://www.theodinproject.com/lessons/ruby-bubble-sort