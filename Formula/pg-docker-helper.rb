class PgDockerHelper < Formula
  desc "A collection of scripts to help import and export Postgres databases from Docker containers. Primarily used for development and testing migrations."
  homepage "https://github.com/GoodPie/export-pg-db-docker"
  url "https://github.com/GoodPie/export-pg-db-docker.git", branch: "main"
  version "head"
  head "https://github.com/GoodPie/export-pg-db-docker.git", branch: "main"

  def install
    bin.install "import-pg-db-docker.sh" => "import-pg-db-docker"
    bin.install "export-pg-db-docker.sh" => "export-pg-db-docker"
    
    # Make them executable
    chmod 0755, bin/"import-pg-db-docker"
    chmod 0755, bin/"export-pg-db-docker"
  end
end
