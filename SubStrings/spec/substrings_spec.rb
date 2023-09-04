require 'spec_helper'
require_relative '../substrings'

RSpec.describe "testing substrings\n" do 
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    it "substrings(\"below\", dictionary)" do
        expect( substrings("below", dictionary) ).to include("below" => 1, "low" => 1)
    end
    
    it "substrings(\"Howdy partner, sit down! How's it going?\", dictionary)" do
        expect( substrings("Howdy partner, sit down! How's it going?", dictionary)).to include( 
            "down" => 1, 
            "go" => 1, 
            "going" => 1, 
            "how" => 2, 
            "howdy" => 1, 
            "it" => 2, 
            "i" => 3, 
            "own" => 1, 
            "part" => 1, 
            "partner" => 1, 
            "sit" => 1 
             )
    end
end



