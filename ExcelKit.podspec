Pod::Spec.new do |s|
  s.name             = "ExcelKit"
  s.version          = "0.1.0"
  s.summary          = "Read Microsoft Excel(TM) .xls files"
  s.description      = <<-DESC
                       Uses libxls C library as a git submodule from https://github.com/JanX2/libxls.git
                       DESC
  s.homepage         = "https://github.com/n1mda/ExcelKit"
  s.license          = 'MIT'
  s.author           = { "Axel Moller" => "axelmoller5@gmail.com" }
  s.source           = { :git => "https://github.com/n1mda/ExcelKit.git", :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m,c}'
  s.exclude_files = 'Pod/Classes/libxls/**/*.{m4,guess,in,sub,sh,am}', 'Pod/Classes/libxls/test/*', 'Pod/Classes/libxls/src/xls2csv.c'
  s.header_mappings_dir = 'Pod/Classes/libxls/include'

  s.libraries = 'iconv'
end
