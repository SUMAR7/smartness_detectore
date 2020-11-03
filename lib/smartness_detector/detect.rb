# frozen_string_literal: true

require 'active_support/inflector'

module SmartnessDetector
  class Detect
    def self.smartness(name)
      if name == 'RoR'
        'Smart!'
      else
        'Dull!'
      end
    end

    def self.pluralize(word)
      word.pluralize
    end
  end
end