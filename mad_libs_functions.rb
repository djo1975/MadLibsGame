# frozen_string_literal: true

# function for getting user input
def get_word(type)
  print "Please enter a #{type}: "
  gets.chomp
end

# function for generating the story
def generate_story(noun, verb, adjective, adverb)
  "Once upon a time, there was a #{adjective} #{noun} who #{verb} #{adverb}."
end

# function for choosing the word type
def choose_word_type(prompt)
  puts prompt
  puts '1. Noun'
  puts '2. Verb'
  puts '3. Adjective'
  puts '4. Adverb'
  print 'Enter the number of the word type you want to enter: '
  choice = gets.chomp.to_i
  case choice
  when 1
    'noun'
  when 2
    'verb'
  when 3
    'adjective'
  when 4
    'adverb'
  else
    puts 'Invalid choice. Please enter a number between 1 and 4.'
    choose_word_type(prompt)
  end
end
