# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidSdk < AndroidToolFormula
  url 'http://dl-ssl.google.com/android/repository/tools_r24.1.2-macosx.zip'
  version '24.1.2'
  sha1 'e32ba2fb21cc92ec4f1f01b5cb9a06f666eee460'

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
  
end
