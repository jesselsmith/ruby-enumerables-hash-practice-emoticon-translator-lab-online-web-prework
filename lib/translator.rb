# require modules here
require "yaml"

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  
  emoticon_dictionary = {}

  emoticon_dictionary[:get_meaning] = library.reduce({}) do |memo, (key, value)|
     memo[value[1]] = key
     memo
  end
  
  
  emoticon_dictionary[:get_emoticon] = library.reduce({}) do |memo, (key, value)|
    memo[value[0]] = value[1]
    memo
  end
  
  emoticon_dictionary
end

def get_japanese_emoticon(path, )
  # code goes here
end

def get_english_meaning
  # code goes here
end