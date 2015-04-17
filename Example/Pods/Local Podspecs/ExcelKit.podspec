#
# Be sure to run `pod lib lint ExcelKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ExcelKit"
  s.version          = "0.1.0"
  s.summary          = "Read Microsoft Excel(TM) .xls files"
  s.description      = <<-DESC
                       Uses libxls C library as a git submodule from https://github.com/JanX2/libxls.git
                       DESC
  s.homepage         = "https://github.com/n1mda/ExcelKit"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Axel Moller" => "axelmoller5@gmail.com" }
  s.source           = { :git => "https://github.com/n1mda/ExcelKit.git", :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m,c}'
  s.exclude_files = 'Pod/Classes/lib/libxls/**/*.{m4,guess,in,sub,sh,am}', 'Pod/Classes/lib/libxls/test/*', 'Pod/Classes/lib/libxls/src/xls2csv.c'

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Classes/lib/libxls/**" }

  s.libraries = 'iconv'
end
