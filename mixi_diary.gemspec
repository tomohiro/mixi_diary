# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'mixi_diary/version'

Gem::Specification.new do |s|
  s.name        = 'mixi_diary'
  s.version     = MixiDiary::VERSION
  s.authors     = ['Tomohiro, TAIRA']
  s.email       = ['tomohiro.t@gmail.com']
  s.homepage    = ''
  s.summary     = %q{Post diary to the mixi.jp}
  s.description = %q{Post diary to the mixi.jp}

  s.rubyforge_project = "mixi_diary"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'mechanize'
end
