# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula")

class GoogleM2repository < AndroidToolFormula
  desc "Local Maven repository for Support Libraries"
  url "https://dl.google.com/android/repository/google_m2repository_r29.zip"
  version "29"
  sha1 "e7e27b0bf6552ef61eacc04c98209cfb8b01faae"
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
