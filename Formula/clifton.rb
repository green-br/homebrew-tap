# clifton.rb
class Clifton < Formula
  desc "SSH connection manager"
  homepage "https://github.com/isambard-sc/clifton"
  head "https://github.com/isambard-sc/clifton.git", branch: "master"
  url "https://github.com/isambard-sc/clifton.git",
      tag: "0.1.0",
      revision: "d78005504738b327f78aa373a3a281d69d79d2e6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^clifton /, shell_output("#{bin}/clifton --version"))
  end
end
