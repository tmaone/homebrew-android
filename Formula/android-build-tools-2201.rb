# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula") unless defined?(android_tool_formula)

class AndroidBuildTools2201 < AndroidToolFormula
  url "https://dl.google.com/android/repository/build-tools_r22.0.1-macosx.zip"
  version "22.0.1"
  sha1 "53dad7f608e01d53b17176ba11165acbfccc5bbf"

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end

  test do
    system "true"
  end
end
