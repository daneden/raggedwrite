# Plugin/Gem Loader
require 'typogruby'

# Typogruby - better typography
module Jekyll
  module Converters
    class Markdown < Jekyll::Converter
      def convert(content)
        setup
        return Typogruby.improve(Maruku.new(content).to_html)
      end
    end
  end
end
