class Ansilove < Formula
  desc "ANSi / ASCII art to PNG converter in C"
  homepage "https://github.com/ansilove/ansilove"
  url "https://github.com/ansilove/ansilove/archive/3.0.8.tar.gz"
  sha256 "655472d31a9ec5a5ba29f5c15485d8647526ff8b0c9968d71f4267a9aa9bb544"
  depends_on "cmake" => :build
  depends_on "gd"

  def install
    system "cmake", "."
    system "make", "ansilove"
    libexec.install "ansilove"
    bin.install_symlink libexec/"ansilove"
  end

  test do
    system "#{bin}/ansilove", "-e"
  end
end
