class Dwum < Formula
  desc "Delete archives while unzipping with APFS zero-write hole punching"
  homepage "https://github.com/luanyufei/delete_when_unzip_mac"
  url "https://github.com/luanyufei/delete_when_unzip_mac/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "86276c916a9c82d8489ccdf728418c6d91ea992b93a7e33a1f7bf7dca60c78c0"
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
