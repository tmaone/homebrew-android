require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android21SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-21_r04.zip"
  version "4"
  sha1 "9b2d64a69a72fa596c386899a742a404308f2c92"
  api_version "21"
  abi "x86_64"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
