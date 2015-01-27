require 'tilt'

module Revelations
  class Slide

    # @param path [Pathname]
    def initialize(path)
      @path = path
    end

    def text
      @path.read
    end

    def render
      template = Tilt::KramdownTemplate.new(@path.to_s, :parse_block_html => true, :input => 'GFM')

      return <<-EOD
      <!-- BEGIN #{@path.to_s} -->
      <section>
        #{template.render}
      </section>
      <!-- END #{@path.to_s} -->
      EOD
    end
  end
end
