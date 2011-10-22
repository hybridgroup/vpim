Gem::Specification.new do |s|
  s.name              = "vpim"
  s.author            = "Sam Roberts"
  s.email             = "vieuxtech@gmail.com"
  s.homepage          = "http://vpim.rubyforge.org"
  s.rubyforge_project = "vpim"
  s.version           = "11.9.6"
  s.summary           = "iCalendar and vCard support for ruby"
  s.description       = <<'---'
This is a pure-ruby library for decoding and encoding vCard and iCalendar data
("personal information") called vPim.
---
  s.has_rdoc          = true
  s.extra_rdoc_files  = ["README", "CHANGES", "COPYING", "samples/README.mutt" ]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
