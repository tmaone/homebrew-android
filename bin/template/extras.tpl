# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula")

class %%VENDOR_NAME%%%%PATH_NAME%% < AndroidToolFormula
%%ARCHIVE_INFO%%
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/%%VENDOR%%/%%PATH%%").install Dir["*"]
    install_tools prefix/"extras/%%VENDOR%%/%%PATH%%"

    src_prop = prefix/"extras/%%VENDOR%%/%%PATH%%/source.properties"
    src_prop.delete if src_prop.exist?
    src_prop.write <<-EOS.undent
      Extra.VendorId=%%VENDOR%%
      Extra.Path=%%PATH%%
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/%%VENDOR%%"
  end
end
