require 'revelations/slide'
require 'revelations/layout'

module Revelations
  class Presentation

    DEFAULTS = {
      :layout => 'layouts/default.erb',
      :slides => 'slides',
    }

    def initialize(config)
      @config = DEFAULTS.merge(config)
    end

    def layout
      Layout.new(Pathname.new(@config[:layout]))
    end

    def render
      layout.render(slides)
    end

    def slides
      @config['order'].map do |filename|
        Slide.new(Pathname.new(File.join(@config[:slides], "#{filename}.mkd")))
      end
    end
  end
end
