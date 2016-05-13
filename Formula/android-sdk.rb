# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula")

class AndroidSdk < AndroidToolFormula
  url "https://dl.google.com/android/repository/tools_r25.1.6-macosx.zip"
  version "25.1.6"
  sha1 "b04bc0088bca1df5765ba450064ecdc9fd47697a"

  def install
    (prefix/"tools").install Dir["*"]
    install_tools prefix/"tools"

    # These are directories where other packages will insert stuff for the SDK to
    # pick up.  They are symlinked to this tree.
    %w[platforms platform-tools build-tools samples temp add-ons sources system-images extras docs].each do |d|
      src = sdk_dir/d
      src.mkpath
      prefix.install_symlink src
    end
  end

  def caveats; <<-EOS.undent
    The Android-SDK location for IDEs such as Eclipse, IntelliJ etc is:
      #{prefix}

    You may need to add the following to your .bashrc:
      export ANDROID_HOME=#{opt_prefix}

    If you haven't already done so, you will probably want to:
      brew install toonetown/android/android-platform-tools toonetown/android/android-build-tools
    And you probably want to install one of the toonetown/android/android-platform-XX packages too
    EOS
  end

  test do
    system "true"
  end
end
