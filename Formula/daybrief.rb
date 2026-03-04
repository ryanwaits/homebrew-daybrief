class Daybrief < Formula
  include Language::Python::Virtualenv

  desc "Daily iMessage + Twitter DM digest agent"
  homepage "https://github.com/ryanwaits/daybrief"
  url "https://github.com/ryanwaits/daybrief/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f395dfcfd2fe922485c57dde4ae0ae585c9667d53caa2eb2a14683ae2f16c134"
  license "MIT"

  depends_on :macos
  depends_on "python@3.12"

  # nullclaw binary (not on PATH — abstracted behind daybrief CLI)
  on_arm do
    resource "nullclaw" do
      url "https://github.com/ryanwaits/nullclaw/releases/download/v2026.3.3/nullclaw-macos-aarch64.bin"
      sha256 "a74a9755371900fe58e64a30235409e814ad6e9a3bdd51ce229afa11462665cc"
    end
  end

  on_intel do
    resource "nullclaw" do
      url "https://github.com/ryanwaits/nullclaw/releases/download/v2026.3.3/nullclaw-macos-x86_64.bin"
      sha256 "986d31148ea47027d52fbbbd2bcaab395e137ba5bf68d7c98e242f66858d9c67"
    end
  end

  resource "Js2Py-3.13" do
    url "https://files.pythonhosted.org/packages/e2/9e/17ed2ceebff1539a454b66d3f056001ab37f679e28a336e1ba88407940fe/js2py_3_13-0.74.1.tar.gz"
    sha256 "91e214f717312f9d510eaf36fcc5325b0b15a22a49831fe2b434bca4a33c1f77"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/96/f0/5eb65b2bb0d09ac6776f2eb54adee6abe8228ea05b20a5ad0e4945de8aac/anyio-4.12.1.tar.gz"
    sha256 "41cfcc3a4c85d3f05c932da7c26d0201ac36f72abd4435ba90d0464a3ffed703"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/c3/b0/1c6a16426d389813b48d95e26898aff79abbde42ad353958ad95cc8c9b21/beautifulsoup4-4.14.3.tar.gz"
    sha256 "6292b1c5186d356bba669ef9f7f051757099565ad9ada5dd630bd9de5fa7fb86"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "filetype" do
    url "https://files.pythonhosted.org/packages/bb/29/745f7d30d47fe0f251d3ad3dc2978a23141917661998763bebb6da007eb1/filetype-1.2.0.tar.gz"
    sha256 "66b56cd6474bf41d8c54660347d37afcc3f7d1970648de365c102ef77548aadb"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/aa/88/262177de60548e5a2bfc46ad28232c9e9cbde697bd94132aeb80364675cb/lxml-6.0.2.tar.gz"
    sha256 "cd79f3367bd74b317dda655dc8fcfa304d9eb6e4fb06b7168c5cf27f96e0cd62"
  end

  resource "m3u8" do
    url "https://files.pythonhosted.org/packages/9b/a5/73697aaa99bb32b610adc1f11d46a0c0c370351292e9b271755084a145e6/m3u8-6.0.0.tar.gz"
    sha256 "7ade990a1667d7a653bcaf9413b16c3eb5cd618982ff46aaff57fe6d9fa9c0fd"
  end

  resource "pyjsparser" do
    url "https://files.pythonhosted.org/packages/48/ef/c72abcfa2c6accd03e7c89c400790fc3d908c5804d50a7c4e9ceabd74d23/pyjsparser-2.7.1.tar.gz"
    sha256 "be60da6b778cc5a5296a69d8e7d614f1f870faf94e1b1b6ac591f2ad5d729579"
  end

  resource "pyotp" do
    url "https://files.pythonhosted.org/packages/f3/b2/1d5994ba2acde054a443bd5e2d384175449c7d2b6d1a0614dbca3a63abfc/pyotp-2.9.0.tar.gz"
    sha256 "346b6642e0dbdde3b4ff5a930b664ca82abfa116356ed48cc42c7d6590d36f63"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/82/ed/0301aeeac3e5353ef3d94b6ec08bbcabd04a72018415dcb29e588514bba8/python_dotenv-1.2.2.tar.gz"
    sha256 "2c371a91fbd7ba082c2c1dc1f8bf89ca22564a087c2c287cd9b662adde799cf3"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "socksio" do
    url "https://files.pythonhosted.org/packages/f8/5c/48a7d9495be3d1c651198fd99dbb6ce190e2274d0f28b9051307bdec6b85/socksio-1.0.0.tar.gz"
    sha256 "f88beb3da5b5c38b9890469de67d0cb0f9d494b78b106ca1845f96c10b91c4ac"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/7b/ae/2d9c981590ed9999a0d91755b47fc74f74de286b0f5cee14c9269041e6c4/soupsieve-2.8.3.tar.gz"
    sha256 "3267f1eeea4251fb42728b6dfb746edc9acaffc4a45b27e19450b676586e8349"
  end

  resource "twikit" do
    url "https://files.pythonhosted.org/packages/36/1e/bb8bfff056eb46b4645780f65b710ea5b83d522deba573652174d858178a/twikit-2.3.3.tar.gz"
    sha256 "081177a8a1b05f3d67e5622d839bba2a63422c07cea31b906f89df67ae8166da"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/8b/2e/c14812d3d4d9cd1773c6be938f89e5735a1f11a9f184ac3639b93cef35d5/tzlocal-5.3.1.tar.gz"
    sha256 "cceffc7edecefea1f595541dbd6e990cb1ea3d19bf01b2809f362a03dd7921fd"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "webvtt-py" do
    url "https://files.pythonhosted.org/packages/5e/f6/7c9c964681fb148e0293e6860108d378e09ccab2218f9063fd3eb87f840a/webvtt-py-0.5.1.tar.gz"
    sha256 "2040dd325277ddadc1e0c6cc66cbc4a1d9b6b49b24c57a0c3364374c3e8a3dc1"
  end

  def install
    # Install nullclaw binary to libexec (NOT bin — abstracted from user)
    resource("nullclaw").stage do
      nullclaw_bin = Dir["nullclaw-*"].first || Dir["*.bin"].first
      if nullclaw_bin
        chmod 0755, nullclaw_bin
        (libexec/"nullclaw").install nullclaw_bin => "nullclaw"
      end
    end
    # Ensure nullclaw is executable
    chmod 0755, libexec/"nullclaw/nullclaw" if (libexec/"nullclaw/nullclaw").exist?

    # Python virtualenv for twitter-poller
    venv = virtualenv_create(libexec/"venv", "python3.12")
    venv.pip_install resources.reject { |r| r.name == "nullclaw" }

    # Install twitter-poller source
    (libexec/"twitter-poller").install Dir["twitter-poller/*"]

    # Install config template
    (etc/"daybrief").install "config/nullclaw.json.template"

    # Create log directory
    (var/"log/daybrief").mkpath

    # Install CLI wrapper with placeholder substitution
    inreplace "bin/daybrief" do |s|
      s.gsub! "@@NULLCLAW@@", "#{libexec}/nullclaw/nullclaw"
      s.gsub! "@@LIBEXEC@@", libexec.to_s
      s.gsub! "@@LOGDIR@@", "#{var}/log/daybrief"
      s.gsub! "@@TEMPLATE@@", "#{etc}/daybrief/nullclaw.json.template"
      s.gsub! "@@ABDB@@", "#{Dir.home}/Library/Application Support/AddressBook/AddressBook-v22.abcddb"
    end
    bin.install "bin/daybrief"
  end

  service do
    run [libexec/"nullclaw/nullclaw", "gateway"]
    keep_alive true
    log_path var/"log/daybrief/nullclaw.log"
    error_log_path var/"log/daybrief/nullclaw.err"
    environment_variables HOME: Dir.home
  end

  def caveats
    <<~EOS
      To get started:

        daybrief setup

      This will configure your API key, email, Twitter credentials,
      and Full Disk Access. Then start the gateway service:

        brew services start daybrief

      Your first digest will arrive tomorrow at 8am.

      For troubleshooting:

        daybrief status
        daybrief doctor
    EOS
  end

  test do
    assert_match "daybrief", shell_output("#{bin}/daybrief help")
    assert_match version.to_s, shell_output("#{bin}/daybrief version")
  end
end
