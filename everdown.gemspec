# -*- encoding: utf-8 -*-
require File.expand_path("../lib/everdown/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "everdown"
  s.version     = Everdown::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Simon H. Eskildsen"]
  s.email       = ["sirup@sirupsen.com"]
  s.homepage    = "http://github.com/Sirupsen/everdown"
  s.summary     = "Sync Markdown files with Evernote"
  s.description = "Everdown runs in the background, keeping local Markdown files whereevere you'd like up-to-date with Evernote"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "evernote", ">= 0.1.0"
  s.add_dependency "rdiscount", ">= 1.2.7"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
