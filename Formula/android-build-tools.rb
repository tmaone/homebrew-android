# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidBuildTools < AndroidToolFormula
  url 'http://dl-ssl.google.com/android/repository/build-tools_r21.1-macosx.zip'
  version '21.1.0'
  sha1 'df619356c2359aa5eacdd48699d15b335d9bd246'

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
  
end
