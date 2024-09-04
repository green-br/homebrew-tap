# clifton.rb
class Clifton < Formula
  desc "SSH connection manager"
  homepage "https://github.com/isambard-sc/clifton"
  head "https://github.com/isambard-sc/clifton.git", branch: "master"
  url "https://github.com/isambard-sc/clifton.git",
      tag: "0.1.3",
      revision: "627d5fddc911420c2dc3d03c4dd59d8c347f63dc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^clifton /, shell_output("#{bin}/clifton --version"))
  end
end
