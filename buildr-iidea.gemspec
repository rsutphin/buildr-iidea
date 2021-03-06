require File.expand_path(File.dirname(__FILE__) + '/lib/buildr/intellij_idea/version')

Gem::Specification.new do |spec|
  spec.name           = 'buildr-iidea'
  spec.version        = Buildr::IntellijIdea::Version::STRING
  spec.authors        = ['Rhett Sutphin', 'Peter Donald']
  spec.email          = ["rhett@detailedbalance.net","peter@realityforge.org"]
  spec.homepage       = "http://github.com/realityforge/buildr-iidea"
  spec.summary        = "Buildr tasks to generate Intellij IDEA project files"
  spec.description    = <<-TEXT
This is a buildr extension that provides tasks to generate Intellij IDEA
project files. The iidea task generates the project files based on the
settings of each project and extension specific settings. 
  TEXT

  spec.files          = Dir['{lib,spec}/**/*', '*.gemspec'] +
                        ['LICENSE', 'NOTICE', 'README.rdoc', 'CHANGELOG', 'Rakefile']
  spec.require_paths  = ['lib']

  spec.has_rdoc         = true
  spec.extra_rdoc_files = 'README.rdoc', 'LICENSE', 'NOTICE', 'CHANGELOG'
  spec.rdoc_options     = '--title', "#{spec.name} #{spec.version}", '--main', 'README.rdoc'

  spec.post_install_message = "Thanks for installing the Intellij IDEA extension for Buildr"
end
