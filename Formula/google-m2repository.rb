# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula") unless defined?(android_tool_formula)

class GoogleM2repository < AndroidToolFormula
  desc "Local Maven repository for Support Libraries"
  url "https://dl.google.com/android/repository/google_m2repository_r35.zip"
  version "35"
  sha1 "209d1f3b4c5db966044436b793fb8fbd77a7eaf1"
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
