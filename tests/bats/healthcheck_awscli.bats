#!/usr/bin/env bats

load helper

@test "AWS: awscli installed." {
	run aws --version
	[ "$status" -eq 0 ]
}

