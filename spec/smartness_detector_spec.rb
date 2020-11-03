# frozen_string_literal: true

require 'smartness_detector'

describe SmartnessDetector::Detect do
  it 'Everything is dull!' do
    expect(SmartnessDetector::Detect.smartness('everything')).to eql('Dull!')
  end

  it 'RoR is smart' do
    expect(SmartnessDetector::Detect.smartness('RoR')).to eql('Smart!')
  end

  it 'smartly pluralizes a word' do
    expect(SmartnessDetector::Detect.pluralize('Smart')).to eql('Smarts')
  end
end