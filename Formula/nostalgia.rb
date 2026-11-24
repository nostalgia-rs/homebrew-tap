class Nostalgia < Formula
  desc "CLI to help bring some nostalgia to your day"
  homepage "https://github.com/nostalgia-rs/nostalgia"
  url "https://github.com/nostalgia-rs/nostalgia/releases/download/v26.11.24/nostalgia-v26.11.24.tar.gz"
  sha256 "441cdb91a0d952c11dff540d9b85ce80d35ef2d0e4ba7295e076ebb7acf30759"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage: nostalgia", shell_output("#{bin}/nostalgia --help")
  end
end
