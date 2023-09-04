require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe "test caesar cipher" do 
   describe 'test' do
      it "caesar_cipher(\"What a string!\", 5) should return \"Bmfy f xywnsl!\"" do
         expect(caesar_cipher("What a string!")).to_eq("Bmfy f xywnsl!")
      end
   end
end



