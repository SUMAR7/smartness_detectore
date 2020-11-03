# frozen_string_literal: true

require 'thor'
require 'smartness_detector'

module SmartnessDetector
  class CLI < Thor
    desc 'Detect Smartness', 'Detect the smartness'
    def smartness(name)
      puts SmartnessDetector::Detect.smartness(name)
    end

    desc 'Pluralize the word', 'Smartly Pluralize the word'
    method_option :word, aliases: '-w'
    def pluralize
      puts SmartnessDetector::Detect.pluralize(options[:word])
    end
  end
end