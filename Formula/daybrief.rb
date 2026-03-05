class Daybrief < Formula
  include Language::Python::Virtualenv

  desc "Daily iMessage + Twitter DM digest agent"
  homepage "https://github.com/ryanwaits/daybrief"
  url "https://github.com/ryanwaits/daybrief/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  license "MIT"

  depends_on :macos
  depends_on "python@3.12"

  # nullclaw binary (not on PATH — abstracted behind daybrief CLI)
  on_arm do
    resource "nullclaw" do
      url "https://github.com/ryanwaits/nullclaw/releases/download/v2026.3.4/nullclaw-macos-aarch64.bin"
      sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
    end
  end

  on_intel do
    resource "nullclaw" do
      url "https://github.com/ryanwaits/nullclaw/releases/download/v2026.3.4/nullclaw-macos-x86_64.bin"
      sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
    end
  end

  resource "Js2Py-3.13" do
    url "https://files.pythonhosted.org/packages/e2/9e/17ed2ceebff1539a454b66d3f056001ab37f679e28a336e1ba88407940fe/js2py_3_13-0.74.1.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/96/f0/5eb65b2bb0d09ac6776f2eb54adee6abe8228ea05b20a5ad0e4945de8aac/anyio-4.12.1.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/c3/b0/1c6a16426d389813b48d95e26898aff79abbde42ad353958ad95cc8c9b21/beautifulsoup4-4.14.3.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "filetype" do
    url "https://files.pythonhosted.org/packages/bb/29/745f7d30d47fe0f251d3ad3dc2978a23141917661998763bebb6da007eb1/filetype-1.2.0.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/aa/88/262177de60548e5a2bfc46ad28232c9e9cbde697bd94132aeb80364675cb/lxml-6.0.2.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "m3u8" do
    url "https://files.pythonhosted.org/packages/9b/a5/73697aaa99bb32b610adc1f11d46a0c0c370351292e9b271755084a145e6/m3u8-6.0.0.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "pyjsparser" do
    url "https://files.pythonhosted.org/packages/48/ef/c72abcfa2c6accd03e7c89c400790fc3d908c5804d50a7c4e9ceabd74d23/pyjsparser-2.7.1.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "pyotp" do
    url "https://files.pythonhosted.org/packages/f3/b2/1d5994ba2acde054a443bd5e2d384175449c7d2b6d1a0614dbca3a63abfc/pyotp-2.9.0.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/82/ed/0301aeeac3e5353ef3d94b6ec08bbcabd04a72018415dcb29e588514bba8/python_dotenv-1.2.2.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "socksio" do
    url "https://files.pythonhosted.org/packages/f8/5c/48a7d9495be3d1c651198fd99dbb6ce190e2274d0f28b9051307bdec6b85/socksio-1.0.0.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/7b/ae/2d9c981590ed9999a0d91755b47fc74f74de286b0f5cee14c9269041e6c4/soupsieve-2.8.3.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "twikit" do
    url "https://files.pythonhosted.org/packages/36/1e/bb8bfff056eb46b4645780f65b710ea5b83d522deba573652174d858178a/twikit-2.3.3.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/8b/2e/c14812d3d4d9cd1773c6be938f89e5735a1f11a9f184ac3639b93cef35d5/tzlocal-5.3.1.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
  end

  resource "webvtt-py" do
    url "https://files.pythonhosted.org/packages/5e/f6/7c9c964681fb148e0293e6860108d378e09ccab2218f9063fd3eb87f840a/webvtt-py-0.5.1.tar.gz"
    sha256 "77f130dae794e876cfc40c0adebdfa6cbdb6c69fa69e5b27042ac9af272b1ce4"
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

    # Install workspace files
    (libexec/"workspace").install "config/workspace/INTEGRATIONS.md"

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

      This 3-step wizard configures your API key, Full Disk Access,
      and starts the service. Set up Slack, Twitter, and your daily
      digest by messaging your agent via iMessage.

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
