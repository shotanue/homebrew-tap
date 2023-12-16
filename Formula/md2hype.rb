class Markdot < Formula
  desc 'A text converter from markdown to html, using unified.js and Bun.'
  version '0.0.1'
  homepage 'https://github.com/shotanue/md2hype'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/md2hype/releases/download/0.0.1/md2hype-darwin-arm64'
      sha256 '4b2809ebe914e9ad21fc81ac87e1c8843c406e63f3d219344a2736449560a67b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/md2hype/releases/download/0.0.1/md2hype-darwin-amd64'
      sha256 '904d024ca5a125659fed63cc00498b3eec16dc1419cf3bf4bf1ba59f8a0151d0'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/md2hype/releases/download/0.0.1/md2hype-linux-amd64'
      sha256 'f88a1cf9359f8950b1d5da0aa0856dfac8d31e597a448460086a832919282d42'
    end
  end

  head do
    url 'https://github.com/shotanue/md2hype.git'
  end

  def install
    bin.install Dir["*"].first => "md2hype"
  end
end
