class Dwum < Formula
  desc "Delete archives while unzipping with APFS zero-write hole punching"
  homepage "https://github.com/luanyufei/delete_when_unzip_mac"
  url "https://github.com/luanyufei/delete_when_unzip_mac/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "addf54e46354135123ea42ed6f3cf9170a7d7bdbbfcc870dbe3fade8a9d8aad0"
  license "Apache-2.0"

  depends_on "libarchive"
  depends_on :macos

  def install
    system "./build_macos.sh"
    bin.install ".build/bin/dwum"
  end

  test do
    system "#{bin}/dwum", "--version"
  end
end
