# clifton.rb
class Clifton < Formula
  desc "SSH connection manager"
  homepage "https://github.com/isambard-sc/clifton"
  head "https://github.com/isambard-sc/clifton.git", branch: "master"
  url "https://github.com/isambard-sc/clifton.git",
      tag: "0.1.2",
      revision: "3233b2bc1d1526b233e6c6e1cf6a61b5677129f3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^clifton /, shell_output("#{bin}/clifton --version"))
  end
end
