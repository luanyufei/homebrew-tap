class Dwum < Formula
  desc "Delete archives while unzipping with APFS zero-write hole punching"
  homepage "https://github.com/luanyufei/delete_when_unzip_mac"
  url "https://github.com/luanyufei/delete_when_unzip_mac/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "cfae11a0942ad81dfbd00a0a33aacf3b7d55a38bd22ac33fc5e7213658c8669c"
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
