Gem::Specification.new do |s|
  s.name = "ssher"
  s.version = "0.0.1"
  s.platform = Gem::Platform::RUBY
  s.authors = ["Jeffrey Tong"]
  s.email = ["jeff@hearthstats.net"]
  s.homepage = "https://github.com/trigun0x2/ssher"
  s.summary = "Simple SSH server managers"
  s.description = "Makes connecting to multiple ssh servers easier without clogging up your alias file."
  s.files = Dir.glob("{bin,lib,test,examples,doc,data}/**/*") + %w(README.md)
  s.require_path = 'lib'
  s.executables = ["ssher"]
  s.required_ruby_version = ">= 1.9.2"
  s.required_rubygems_version = ">= 1.3.6"
end
