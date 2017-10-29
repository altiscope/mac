#!/usr/bin/env bats

load helper

@test "DOCKER: Docker installed." {
	run docker --version
	[ "$status" -eq 0 ]
}

@test "DOCKER: Docker Compose installed." {
	run docker-compose --version
	[ "$status" -eq 0 ]
}

@test "DOCKER: Docker Machine installed." {
	run docker-machine --version
	[ "$status" -eq 0 ]
}

