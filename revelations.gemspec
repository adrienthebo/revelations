lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'revelations/version'

Gem::Specification.new do |s|
  s.name        = 'revelations'
  s.version     = Revelations::VERSION
  s.platform    = Gem::Platform::RUBY

  s.authors     = "Adrien Thebo"
  s.email       = "adrien@somethingsinistral.net"
  s.homepage    = "http://github.com/adrienthebo/revelations"
  s.summary     = "Slide generator for reveal.js"
  s.description = "Slide generator for reveal.js"

  s.license  = 'Apache-2.0'

  s.add_dependency 'tilt'
  s.add_dependency 'kramdown'

  s.files        = %x[git ls-files].split($/)
  s.require_path = 'lib'
  s.bindir       = 'bin'
  s.executables  = 'rev-present'
end
