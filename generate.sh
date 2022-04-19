#!/bin/bash

set -euxo pipefail

readonly LATEX=xelatex
readonly OUTPUTS=(html pdf)

pdflatex() {
  $LATEX resume.tex
}

main() {
  if [[ $# == 0 ]]; then
    echo "Must specify: ${OUTPUTS[*]}"
    exit 1
  fi

  local output="$1"

  case "${output}" in
    html)
      echo "TODO(bwb) setup html output"
      exit 1
    ;;
    pdf)
      pdflatex
    ;;
  esac
}

main "$@"
