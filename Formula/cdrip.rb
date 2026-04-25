class Cdrip < Formula
  desc "CLI to read/convert AIFF files to FLAC"
  homepage "https://github.com/DonovanMontoya/CD-Rip"
  url "https://github.com/DonovanMontoya/cdrip/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fa829a80d3c3e06a877be46d9ba21072cdedf27cfa39b8dee2db360532e777b3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cdrip", "--help"
  end
end
