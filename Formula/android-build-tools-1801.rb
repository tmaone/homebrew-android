# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula") unless defined?(android_tool_formula)

class AndroidBuildTools1801 < AndroidToolFormula
  url "https://dl.google.com/android/repository/build-tools_r18.0.1-macosx.zip"
  version "18.0.1"
  sha1 "d84f5692fb44d60fc53e5b2507cebf9f24626902"

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
