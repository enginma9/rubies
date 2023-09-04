require 'spec_helper'
require_relative '../'

RSpec.describe "test caesar cipher" do 
   describe 'test'
      it "caesar_cipher(\"What a string!\", 5) should return \"Bmfy f xywnsl!\"" do
         expected_output = "Bmfy f xywnsl!" 
         expect(caesar_cipher("What a string!")).to_eq(expected_output)
      end
   end
end



