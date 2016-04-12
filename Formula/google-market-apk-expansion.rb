# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class GoogleMarketApkExpansion < AndroidToolFormula
  url 'https://dl.google.com/android/repository/market_apk_expansion-r03.zip'
  version '1'
  sha1 '5305399dc1a56814e86b8459ce24871916f78b8c'
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/market_apk_expansion").install Dir["*"]
    install_tools prefix/"extras/google/market_apk_expansion"

    srcProp = prefix/"extras/google/market_apk_expansion/source.properties"
    srcProp.delete if srcProp.exist?
    srcProp.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=market_apk_expansion
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end
  
end