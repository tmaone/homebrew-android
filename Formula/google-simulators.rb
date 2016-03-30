# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class GoogleSimulators < AndroidToolFormula
  url 'https://dl.google.com/android/repository/simulator_r01.zip'
  version '1'
  sha1 '4fb5344e34e8faab4db18af07dace44c50db26a7'
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/simulators").install Dir["*"]
    install_tools prefix/"extras/google/simulators"

    srcProp = prefix/"extras/google/simulators/source.properties"
    srcProp.delete if srcProp.exist?
    srcProp.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=simulators
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end
  
end
