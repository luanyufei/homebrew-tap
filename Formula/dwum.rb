class Dwum < Formula
  desc "Delete archives while unzipping with APFS zero-write hole punching"
  homepage "https://github.com/luanyufei/delete_when_unzip_mac"
  url "https://github.com/luanyufei/delete_when_unzip_mac/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6c91b1d89bc372366d4847d5c9f60d73edff3f746336e4a4c3941e12ae7725ae"
  license "Apache-2.0"

  depends_on "libarchive"
  depends_on :macos

  def install
    system "./build_macos.sh"
    bin.install ".build/bin/dwum"
  end

  test do
    system "#{bin}/dwum", "-h"
  end
end
