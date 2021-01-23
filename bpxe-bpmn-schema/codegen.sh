#! /usr/bin/env bash

DIRNAME=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

saxon-he "$DIRNAME/../schemas/BPMN20.xsd" "$DIRNAME/codegen-rust.xsl" | rustfmt > "$DIRNAME/src/autogenerated.rs"
