# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula")

class AndroidBuildTools2100 < AndroidToolFormula
  url "https://dl.google.com/android/repository/build-tools_r21-macosx.zip"
  version "21.0.0"
  sha1 "9bef7989b51436bd4e5114d8a0330359f077cbfa"

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
end
