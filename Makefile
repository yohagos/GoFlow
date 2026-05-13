APP_NAME=goflow

run-api:
	go run ./cmd/api

run-worker:
	go run ./cmd/worker

run-scheduler:
	go run ./cmd/scheduler

build:
	go build -o bin/api ./cmd/api
	go build -o bin/worker ./cmd/worker
	go build -o bin/scheduler ./cmd/scheduler

test:
	go test ./...

lint:
	golangci-lint run

compose-up:
	docker compose up -d

compose-down:
	docker compose down