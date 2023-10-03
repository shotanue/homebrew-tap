class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.3'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.3/markdot-darwin-arm64'
      sha256 '501854c92686ede307f8955e830ef4f64800e867e12f179e0bead5e27ef569af'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.3/markdot-darwin-amd64'
      sha256 'd8ade93946a8a9d39892a6526c0dd94df8a54f25f6107d20ee7cdb00798d8bb3'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.3/markdot-linux-amd64'
      sha256 'ac23aa13a6e921519e94f36550937be951f8cb832586ac5b196644650c726295'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
