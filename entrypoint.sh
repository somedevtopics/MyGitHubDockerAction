#!/bin/sh

set -e

sh -c "pandoc $*" # ouvre un shell, et y exécute pandoc en lui faisant suivre les paramètres
