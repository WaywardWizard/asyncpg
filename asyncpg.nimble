# Package
version     = "0.1.0"
author      = "Eugene Kabanov"
description = "Asynchronous PostgreSQL driver for Nim"
license     = "MIT"
# Skip tests directory
skipDirs = @["tests"]
# Deps
requires "nim >= 2.0.0"

requires "db_connector >= 0.1.0"
