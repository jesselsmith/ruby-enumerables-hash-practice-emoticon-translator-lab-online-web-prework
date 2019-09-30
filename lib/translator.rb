# require modules here
require "yaml"

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  
emoticon_dictionary = {
  
  :get_meaning => library.reduce({}) { |memo, (key, value)|
     memo[value[1]] = key
     memo
  }
  
  :get_emoticon => library.reduce({}){ |memo, (key, value)|
    memo[value[0]] = value[1]
    memo
  }
}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end