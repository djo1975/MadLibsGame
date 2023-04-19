require_relative './mad_libs_functions'

# frozen_string_literal: true

# module containing the main program
module MadLibs
  puts 'Welcome to Mad Libs!'
  puts 'Please choose a story template:'
  puts '1. Once upon a time, there was a/an [adjective] [noun] who [verb] [adverb].'
  puts '2. [noun] [verb] [adverb] down the street, looking very [adjective].'
  print 'Enter the number of the story template you want to use: '
  template_choice = gets.chomp.to_i

  if template_choice == 1
    noun = get_word('noun')
    verb = get_word('verb')
    adjective = get_word('adjective')
    adverb = get_word('adverb')
    story = generate_story(noun, verb, adjective, adverb)
  elsif template_choice == 2
    noun = get_word('noun')
    verb = get_word('verb')
    adverb = get_word('adverb')
    adjective = get_word('adjective')
    story = "#{noun.capitalize} #{verb} #{adverb} down the street, looking very #{adjective}."
  else
    puts 'Invalid choice. Please enter either 1 or 2.'
  end

  puts "Here's your story:"
  puts story
end
