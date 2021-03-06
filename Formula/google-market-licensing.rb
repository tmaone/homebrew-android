# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula") unless defined?(android_tool_formula)

class GoogleMarketLicensing < AndroidToolFormula
  desc "Android Market Licensing client library"
  url "https://dl.google.com/android/repository/market_licensing-r02.zip"
  version "1"
  sha1 "355e8dc304a92a5616db235af8ee7bd554356254"
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/market_licensing").install Dir["*"]
    install_tools prefix/"extras/google/market_licensing"

    src_prop = prefix/"extras/google/market_licensing/source.properties"
    src_prop.delete if src_prop.exist?
    src_prop.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=market_licensing
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end

  test do
    system "true"
  end
end
