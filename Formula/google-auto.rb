# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class GoogleAuto < AndroidToolFormula
  url 'https://dl.google.com/android/repository/extras/auto/desktop-head-unit-linux_r01.1.zip'
  version '1.1'
  sha1 '202a6e1b3009a0eb815f8c672d2d5b3717de6169'
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/auto").install Dir["*"]
    install_tools prefix/"extras/google/auto"

    srcProp = prefix/"extras/google/auto/source.properties"
    srcProp.delete if srcProp.exist?
    srcProp.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=auto
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end
  
end
