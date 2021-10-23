#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# rakefileを実行して単体テストする。
# CreatedAt: 2021-10-23
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$PARENT/src"
	rake
}
Run "$@"
