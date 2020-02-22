class Atcoder < Formula
  desc "Unofficial CLI for AtCoder users"
  homepage "https://github.com/sachaos/atcoder"

  url "https://github.com/sachaos/atcoder/archive/v0.2.4.tar.gz"
  sha256 "0283f9a3a39ba860e7267f8e7217a748d550cbc952c3e686192b3a73439a2c9b"
  head "https://github.com/sachaos/atcoder.git"

  depends_on "go" => :build

  def install
    (buildpath/"src/github.com/sachaos/atcoder").install buildpath.children
    cd "src/github.com/sachaos/atcoder" do
      system "go", "build", "-o", bin/"atcoder"
    end
  end
end
