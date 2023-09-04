require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe "test caesar cipher\n" do 
   it "caesar_cipher(\"What a string!\", 5) should return \"Bmfy f xywnsl!\"" do
      expect( caesar_cypher( "What a string!", 5 ) ).to eq( "Bmfy f xywnsl!" )
   end
end



