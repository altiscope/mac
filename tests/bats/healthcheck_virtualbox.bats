#!/usr/bin/env bats

load helper

@test "VB: VirtualBox installed." {
	run VBoxManage --version
	[ "$status" -eq 0 ]
	assert_contains "$output" "5.1"
}

