#!/usr/bin/env bats

load helper

@test "ATOM: GitHub Atom editor installed." {
	run atom --version
	[ "$status" -eq 0 ]

	run atom --help
	[ "$status" -eq 0 ]
	assert_contains "$output" "Atom Editor"
}

