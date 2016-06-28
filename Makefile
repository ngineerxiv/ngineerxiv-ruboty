.PHONY: help

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run: install ## Run ruboty reading .env file  
	bundle exec ruboty --dotenv

install: .env ## Install dependencies
	bundle install

.env: 
	cp .env.sample .env

