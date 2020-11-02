# frozen_string_literal: true


module SmartnessDetector
  class Detect
    def self.smartness(name)
      if name == 'RoR'
        'Smart!'
      else
        'Dull!'
      end
    end
  end
end