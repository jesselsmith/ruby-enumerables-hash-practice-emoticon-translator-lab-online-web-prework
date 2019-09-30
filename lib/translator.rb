# require modules here
require "yaml"

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  
  get_meaning = library.reduce({}) { |memo, (key, value)|
     memo[value[1]] = key
  }
  
  get_emoticon = library.reduce({}){ |memo, (key, value)|
    memo[value[0]] = key
  }
  

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end