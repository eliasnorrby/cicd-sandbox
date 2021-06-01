#!/usr/bin/env bats

setup() {
  load test_helper.bash
  DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
  SCRIPT_DIR="$( cd "$DIR/.." && pwd)"
  PATH="$SCRIPT_DIR:$PATH"
}

@test "prints tag" {
  result=$(determine-tag.sh)
  assert_equal "$result" "1.2.2"
}
