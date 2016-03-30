require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android15 < AndroidPlatformFormula
  url 'https://dl.google.com/android/repository/android-15_r05.zip'
  version '5'
  sha1 '69ab4c443b37184b2883af1fd38cc20cbeffd0f3'
  api_version '15'
  target_directory 'platforms'
  target_name      'android'

  # Dependencies for docs, sources, and samples
  sources [ 'toonetown/android/android-15-sources' ]

end
