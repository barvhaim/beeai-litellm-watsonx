# beeai-litellm-watsonx

## Installation
```bash
pip install -r requirements.txt
chmod +x run_server.sh
```

## Setup environment
```bash
cp .env.example .env
```
And edit the `.env` file to set your environment variables.

## Usage
```bash
./run_server.sh
```

## Test with curl
```bash
curl --location 'http://0.0.0.0:4000/chat/completions' \
--header 'Content-Type: application/json' \
--data ' {
      "model": "meta-llama/llama-3-3-70b-instruct",
      "messages": [
        {
          "role": "user",
          "content": "what is your favorite colour?"
        }
      ]
    }
'
```