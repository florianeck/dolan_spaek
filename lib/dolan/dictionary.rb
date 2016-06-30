module Dolan::Dictionary
  require 'yaml'

  YAML = YAML::load(File.open(File.expand_path("../../../config/dolan.yml", __FILE__)))
  
  def self.get(word)
    if YAML.fetch(word, nil).is_a?(Array)
      YAML.fetch(word).sample
    elsif YAML.fetch(word, nil).is_a?(Array).is_a?(String)
      YAML.fetch(word)
    else
      word
    end    
  end  
  
end  