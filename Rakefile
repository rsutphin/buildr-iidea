require 'rake'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'spec/rake/spectask'
require File.expand_path("../lib/buildr/intellij_idea/version", __FILE__)

gem_spec = Gem::Specification.load(File.expand_path('buildr-iidea.gemspec', File.dirname(__FILE__)))

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

task :default => :spec

desc "Generate RDoc documentation in rdoc/"
Rake::RDocTask.new :rdoc do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = gem_spec.name
  rdoc.options = gem_spec.rdoc_options.clone
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.include gem_spec.extra_rdoc_files
end

Rake::GemPackageTask.new(gem_spec).define

namespace :deploy do
  task :tag do
    system("git tag -a #{Buildr::IntellijIdea::Version::STRING} -m 'Released #{Buildr::IntellijIdea::Version::STRING}'")
    puts "Tagged locally.  `git push --tags` if you're sure."
  end
end
