class Nweb < Formula
  desc "Lightweight, high-performance static web server written in Rust"
  homepage "https://github.com/nasyt233/nweb"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nasyt233/nweb/releases/download/nweb-0.8.0/nweb-0.8.0-macos-arm64"
      sha256 "bf5a1130619c57719da45a967793a33486c839fcd306e3c4bf61f1cf8e907ffe"
    end
    on_intel do
      url "https://github.com/nasyt233/nweb/releases/download/nweb-0.8.0/nweb-0.8.0-macos-amd64"
      sha256 "610311ea8cde9f99a87cee8a7871852ea5fe18594c9ebaf4ff88ff6f69218bd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nasyt233/nweb/releases/download/nweb-0.8.0/nweb-0.8.0-linux-arm64"
      sha256 "316866d0690aca3bd4cf1afd4991f7b5a2a0c0525093813da38fac96ac58af22"
    end
    on_intel do
      url "https://github.com/nasyt233/nweb/releases/download/nweb-0.8.0/nweb-0.8.0-linux-amd64"
      sha256 "12cfc9a17e7477e4cedb2a81c262606ccbf56d5820aa2104c990398545b5ce16"
    end
  end

  def install
    bin.install(Dir["nweb-*"].first => "nweb")
  end

  test do
    assert_match "nweb", shell_output("#{bin}/nweb --help 2>&1")
  end
end
