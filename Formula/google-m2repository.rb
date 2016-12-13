# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula") unless defined?(android_tool_formula)

class GoogleM2repository < AndroidToolFormula
  desc "Local Maven repository for Support Libraries"
  url "https://dl.google.com/android/repository/google_m2repository_gms_v8_rc42_wear_2b1_rc4.zip"
  version "41"
  sha1 "4a9ee1c3b578e8149219c82c1b8cd592131ec4fb"
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/m2repository").install Dir["*"]
    install_tools prefix/"extras/google/m2repository"

    src_prop = prefix/"extras/google/m2repository/source.properties"
    src_prop.delete if src_prop.exist?
    src_prop.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=m2repository
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end

  test do
    system "true"
  end
end
