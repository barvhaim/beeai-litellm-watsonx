export $(xargs < .env)
litellm --config config.yaml
