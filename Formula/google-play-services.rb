# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class GooglePlayServices < AndroidToolFormula
  url 'http://dl-ssl.google.com/android/repository/google_play_services_8115000_r27.zip'
  version '27'
  sha1 'cdb13f826ca82d3c3730cf1df9f3bf58565fd4bb'
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/google_play_services").install Dir["*"]
    install_tools prefix/"extras/google/google_play_services"

    srcProp = prefix/"extras/google/google_play_services/source.properties"
    srcProp.delete if srcProp.exist?
    srcProp.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=google_play_services
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end
  
end
