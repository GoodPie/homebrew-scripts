class PgDockerHelper < Formula
  desc "A collection of scripts to help import and export Postgres databases from Docker containers. Primarily used for development and testing migrations."
  homepage "https://github.com/GoodPie/export-pg-db-docker"
  url "https://github.com/GoodPie/export-pg-db-docker/archive/refs/tags/v1.0.1.tar.gz"
  version "1.0.1"

  resource "import-pg-db-docker" do
    url "https://raw.githubusercontent.com/GoodPie/export-pg-db-docker/2ce9c22e1a3c98039830b39dcdfa4841db14948c/import-pg-db-docker.sh"
    sha256 "331690aa5ae2e71f5e1c88cbd2642f3c47716ab19facdd2d5658fc7206a6ff88"
  end

  resource "export-pg-db-docker" do
    url "https://raw.githubusercontent.com/GoodPie/export-pg-db-docker/2ce9c22e1a3c98039830b39dcdfa4841db14948c/export-pg-db-docker.sh"
    sha256 "2005ed1ad0cfcac69a00d18600228a8f855ea81bd646c32d004b2e5f27cb3e15"
  end

  def install
    resource("import-pg-db-docker").stage do
      bin.install "import-pg-db-docker.sh" => "import-pg-db-docker"
    end

    resource("export-pg-db-docker").stage do
      bin.install "export-pg-db-docker.sh" => "export-pg-db-docker"
    end
  end
end