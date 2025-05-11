@echo off
REM Load environment variables from .env file
for /F "tokens=*" %%A in (.env) do set %%A

REM Run litellm with the config file
uv run litellm --config config.yaml
