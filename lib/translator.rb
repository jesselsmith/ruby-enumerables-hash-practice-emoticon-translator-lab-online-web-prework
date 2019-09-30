# require modules here
require "yaml"

def load_library(path)
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

def get_japanese_emoticon(path, emoticon)
  emoticon_dictionary = load_library(path)
  
  emoticon_dictionary[:get_emoticon][emoticon]
end

def get_english_meaning
  # code goes here
end