module Dolan::String
  
  String.class_eval do
    def to_dolan
      self.split(" ").map {|s| Dolan::Dictionary.get(s.downcase) }.join(" ")
    end  
  end  
  
end  