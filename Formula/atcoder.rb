class Atcoder < Formula
  desc "Unofficial CLI for AtCoder users"
  homepage "https://github.com/sachaos/atcoder"

  url "https://github.com/sachaos/atcoder/archive/v0.2.9-dev.4.tar.gz"
  sha256 "132fe042c67151d2c5c9a67c16a199370aadc52d767fca0e30fe1c6abe8553f4"
  head "https://github.com/sachaos/atcoder.git"

  depends_on "go" => :build

  def install
    (buildpath/"src/github.com/sachaos/atcoder").install buildpath.children
    cd "src/github.com/sachaos/atcoder" do
      system "go", "build", "-o", bin/"atcoder"
    end
  end
end
