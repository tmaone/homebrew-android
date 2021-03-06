require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android3 < AndroidPlatformFormula
  desc "Android SDK Platform 3"
  url "https://dl.google.com/android/repository/android-1.5_r04-macosx.zip"
  version "4"
  sha1 "d3a67c2369afa48b6c3c7624de5031c262018d1e"
  api_version "3"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
