# 🐝 beeai-litellm-watsonx

## ✅ Requirements
- Unix-like OS as Linux, macOS (Not tested on Windows with WSL yet).
- Python 3.11 or higher.
- `uv` package manager - [Installation](https://github.com/astral-sh/uv?tab=readme-ov-file#installation) 
- watsonx.ai API key

## 📦 Installation
```bash
git clone https://github.com/barvhaim/beeai-litellm-watsonx.git
cd beeai-litellm-watsonx
uv sync
chmod +x run_server.sh
```

## ⚙️ Setup environment
```bash
cp .env.example .env
```
And edit the `.env` file to set your environment variables.
- `WATSONX_API_BASE` - The base URL of your watsonx.ai API.
- `WATSONX_PROJECT_ID` - The project ID of your watsonx.ai project.
- `WATSONX_API_KEY` - The API key of your watsonx.ai project.


## 🤖 Choosing a model
You may set a different model in the `config.yaml` file. The default model is `watsonx/meta-llama/llama-3-3-70b-instruct`.
_Make sure to have `watsonx` prefixed in the model name to use the watsonx.ai as the LLM provider._

List of available models: https://dataplatform.cloud.ibm.com/docs/content/wsj/analyze-data/fm-models.html?context=wx#provided

## 🚀 Usage
```bash
./run_server.sh
```

## 🧪 Test with curl
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

For Windows users without WSL, use `run_server.bat` instead of `run_server.sh`. (Not tested yet)

## 🐝 Setup BeeAI platform environment
_(Assuming you have a BeeAI platform installed and `beeai` cli)_

Make sure the litellm server is running, and then run the following command to setup the BeeAI platform environment:
```bash
beeai env setup
```

```txt
? Select LLM provider: Other               🔧 provide API URL
? Enter the base URL of your API (OpenAI-compatible): http://localhost:4000
? Enter API key: dummy
? Select a model (type to filter): meta-llama/llama-3-3-70b-instruct

You're all set! (You can re-run this setup anytime with beeai env setup)
```

🎉 Awesome! Now you can use the BeeAI platform with watsonx.ai!
