cask :v1 => 'android-haxm' do
  url 'http://dl-ssl.google.com/android/repository/extras/intel/haxm-macosx_r05.5.zip'
  version '5.5.0'
  sha256 :no_check
  conflicts_with :cask => 'intel-haxm'
  
  installer :script => 'silent_install.sh',
            :sudo => true,
            :must_succeed => true

  artifact '.', :target => '/usr/local/var/lib/android-sdk/extras/intel/Hardware_Accelerated_Execution_Manager'

  postflight do
    File.open("#{staged_path}/source.properties", 'w') { |srcProp|
      srcProp.write <<-EOS.undent
        Extra.VendorId=intel
        Extra.Path=Hardware_Accelerated_Execution_Manager
        Pkg.Revision=#{version}
      EOS
    }
  end

  uninstall :script => {
                        :sudo => true,
                        :must_succeed => true,
                        :executable => 'silent_install.sh',
                        :args => ['-u']
                       }

end