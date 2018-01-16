#!/usr/bin/env bats

load helper

@test "ATOM: GitHub Atom editor installed." {
	run atom --version
	[ "$status" -eq 0 ]

	run atom --help
	[ "$status" -eq 0 ]
	assert_contains "$output" "Atom Editor"
}

@test "AWS: awscli installed." {
	run aws --version
	[ "$status" -eq 0 ]
}

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

@test "K8S: minikube installed." {
	run minikube version
	[ "$status" -eq 0 ]
}

@test "TREE: tree installed." {
	run tree --version
	[ "$status" -eq 0 ]
}

@test "VAGRANT: vagrant installed." {
	run vagrant --version
	[ "$status" -eq 0 ]
}

@test "VB: VirtualBox installed." {
	run VBoxManage --version
	[ "$status" -eq 0 ]
	assert_contains "$output" "5.1"
}

@test "WATCH: watch installed." {
	run watch --version
	[ "$status" -eq 0 ]
}

@test "XCODE: Xcode installed." {
	run xcode-select --version
	[ "$status" -eq 0 ]
}
