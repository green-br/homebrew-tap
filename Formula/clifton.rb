# clifton.rb
class Clifton < Formula
  desc "SSH connection manager"
  homepage "https://github.com/isambard-sc/clifton"
  url "https://github.com/isambard-sc/clifton/archive/refs/tags/0.1.0.tar.gz"
  sha256 "2e3908a984c43124efc3a0acdabd77dea7fe6faeb8be665a45865b351745f1ae"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^clifton /, shell_output("#{bin}/clifton --version"))
  end
end
