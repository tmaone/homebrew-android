# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula")

class AndroidBuildTools2300 < AndroidToolFormula
  url "https://dl.google.com/android/repository/build-tools_r23-macosx.zip"
  version "23.0.0"
  sha1 "90ba6e716f7703a236cd44b2e71c5ff430855a03"

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
end
