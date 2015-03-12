# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidDocs < AndroidToolFormula
  url 'http://dl-ssl.google.com/android/repository/docs-22_r01.zip'
  version '22-r1'
  sha1 '419791c49fa0a305a06966fd1734cf5b0498ea1a'

  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"docs").install Dir["*"]
    install_tools prefix/"docs"
    link_sdk_dir "docs"
  end
  
end
