# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{GData}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dion Almaer"]
  s.date = %q{2009-01-18}
  s.description = %q{See more information about Google GData APIs at  http://code.google.com/apis/gdata/  == FEATURES/PROBLEMS:  To start out the API set isn't covered. The aim is to support the GData API itself, and then higher level classes for the various Google APIs.  Current support:}
  s.email = %q{dion@almaer.com}
  s.executables = ["addenclosure", "bloggerfeed", "bloggerpost", "gspreadsheet", "removeenclosure"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "website/index.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "config/website.yml.sample", "bin/addenclosure", "bin/bloggerfeed", "bin/bloggerpost", "bin/gspreadsheet", "bin/removeenclosure", "lib/gdata.rb", "lib/gdata/client.rb", "lib/gdata/blogger.rb", "lib/gdata/spreadsheet.rb", "lib/gdata/contacts.rb", "lib/gdata/calendar.rb", "test/test_gdata.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.html.erb"]
  s.has_rdoc = true
  s.homepage = %q{    by Dion Almaer}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{GData}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Google GData Ruby API}
  s.test_files = ["test/test_gdata.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
