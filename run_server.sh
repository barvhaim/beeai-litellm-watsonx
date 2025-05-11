export $(xargs < .env)
uv run litellm --config config.yaml
