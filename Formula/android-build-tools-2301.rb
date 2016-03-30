# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidBuildTools2301 < AndroidToolFormula
  url 'https://dl.google.com/android/repository/build-tools_r23.0.1-macosx.zip'
  version '23.0.1'
  sha1 'd96ec1522721e9a179ae2c591c99f75d31d39718'

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
  
end
