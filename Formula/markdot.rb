class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.8'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.8/markdot-darwin-arm64'
      sha256 '5d1dffb88878bd81fb2bd7ac523dcc97bf15f193237a6e1eb8264cc8aaf4ecad'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.8/markdot-darwin-amd64'
      sha256 'cd79f67293009b69618c950481ebd268d4572b65d5e4f512c5e7f839cc88fcb3'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.8/markdot-linux-amd64'
      sha256 '2a99e816f0582d234a0b48477c4c60a4470f47f5721e89e8288aa1f2f0d016a3'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
