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

## Setup BeeAI platform environment
_(Assuming you have a BeeAI platform installed and `beeai` cli)_

Make the litellm server is running, and then run the following command to setup the BeeAI platform environment:
```bash
beeai env setup
```

```txt
? Select LLM provider: Other               🔧 provide API URL
? Enter the base URL of your API (OpenAI-compatible): http://0.0.0.0:4000
? Enter API key: dummy
? Select a model (type to filter): meta-llama/llama-3-3-70b-instruct

You're all set! (You can re-run this setup anytime with beeai env setup)
```

Awesome! Now you can use the BeeAI platform with watsonx.ai!
