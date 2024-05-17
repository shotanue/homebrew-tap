class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.10'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.10/markdot-darwin-arm64'
      sha256 'ecfb89ad4da21146d2be300acea6a3bd4af7288e753f2bd842eff1850878d7cf'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.10/markdot-darwin-amd64'
      sha256 '50bbc06e844cd4c21b425177f990e41e9b2a1cb6889a2d04dc871014465aafc4'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.10/markdot-linux-amd64'
      sha256 '338d216c6bdb808c9f7ca2b47af8225deea4eb0dd725349fe56f9ae66329788a'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
