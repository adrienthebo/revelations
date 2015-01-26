require 'tilt'

module Revelations
  class Layout

    attr_reader :path

    # @param path [Pathname]
    def initialize(path)
      @path = path
    end

    # @param fragments [#render]
    def render(fragments = [])
      template = Tilt::ERBTemplate.new(@path.to_s)

      template.render do
        fragments.map do |fragment|
          fragment.render
        end.join("\n\n")
      end
    end
  end
end
