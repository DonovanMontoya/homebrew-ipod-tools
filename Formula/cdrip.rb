class Cdrip < Formula
  desc "CLI to read/convert AIFF files to FLAC"
  homepage "https://github.com/DonovanMontoya/CD-Rip"
  url "https://github.com/DonovanMontoya/cdrip/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d8ec49af1d04fd9d6890e99c08af752a1d02ab5ec8ff13683f8b9e01e035fce7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cdrip", "--help"
  end
end
