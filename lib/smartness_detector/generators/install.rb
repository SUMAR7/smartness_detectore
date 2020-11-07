# frozen_string_literal: true

require 'thor/group'

module SmartnessDetector
  module Generators
    class Install < Thor::Group
      argument :group, type: :string
      argument :name, type: :string
      include Thor::Actions

      def self.source_root
        "#{File.dirname(__FILE__)}/smartness"
      end

      def self.exit_on_failure?
        true
      end

      def create_group
        empty_directory(group)
      end

      def smartness
        template('smartness.txt', "#{group}/#{name}.txt")
      end
    end
  end
end