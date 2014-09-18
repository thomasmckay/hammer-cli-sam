# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'hammer_cli_sam/version'

Gem::Specification.new do |spec|
  spec.authors = ['Adam Price']
  spec.email = ['katello@lists.fedorahosted.org']
  spec.license = "GPL-3"
  spec.description = 'Hammer-CLI-SAM is a module for Hammer to provide connectivity to a SAM server.'
  spec.summary = 'SAM commands for Hammer'
  spec.homepage = 'http://github.com/Katello/hammer-cli-sam'

  spec.files = %x{git ls-files}.split($/)

  spec.test_files = %x{git ls-files -- {test,spec,features}/*}.split($/)

  spec.name = 'hammer_cli_sam'
  spec.require_paths = %w{lib}
  spec.version = HammerCLISAM.version

  spec.add_dependency 'hammer_cli_katello', '~> 0.0.6'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '0.24.1'
  spec.add_development_dependency 'rubocop-checkstyle_formatter'
end
