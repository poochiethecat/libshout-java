class Libshout < Formula
  desc "Data and connectivity library for the icecast server"
  homepage "http://www.icecast.org/"
  url "http://downloads.xiph.org/releases/libshout/libshout-2.2.2.tar.gz"
  sha256 "912a1fdb12d31af757e7881db49321e5b5240bd8bd4199e9fb0ce16d66568160"

  depends_on "pkg-config" => :build
  depends_on "libogg"
  depends_on "libvorbis"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end
end
