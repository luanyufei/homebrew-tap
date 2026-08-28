class Dwum < Formula
  desc "Delete archives while unzipping with APFS zero-write hole punching"
  homepage "https://github.com/luanyufei/delete_when_unzip_mac"
  url "https://github.com/luanyufei/delete_when_unzip_mac/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "fcd447eb4f8f6020179f48921e349c974df845b070c569181a11cd2a8ec446a2"
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
