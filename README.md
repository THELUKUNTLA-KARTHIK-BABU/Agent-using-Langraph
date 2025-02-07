# LangGraph AI Agent

## Overview
LangGraph AI Agent is a conversational AI system that integrates FastAPI for backend processing and Streamlit for the frontend user interface. The agent is built using LangGraph, a framework that enables reasoning with Large Language Models (LLMs), and LangChain, a powerful library for chaining together different components in AI workflows. This project supports multiple models, including Llama 3 and Mixtral, and provides web search capabilities using the Tavily API.

## Features
- **FastAPI Backend**: Handles API requests, processes chat inputs, and interacts with the AI models.
- **Streamlit Frontend**: Provides a user-friendly interface for users to input queries and receive AI-generated responses.
- **Support for Multiple Models**: Users can select between different AI models, such as Llama 3 and Mixtral.
- **Tavily Search Integration**: Enhances AI responses by retrieving relevant information from the web.
- **Dockerized Deployment**: The entire system can be containerized and deployed easily using Docker.

## Setup Instructions

### 1. Clone the Repository
To get started, clone the project repository from GitHub:
```sh
git clone <repo-url>
cd <repo-folder>
```

### 2. Install Dependencies
Ensure you have Python 3.9 installed. Then, install the required Python libraries by running:
```sh
pip install -r requirements.txt
```

### 3. Run the Application
To start both the FastAPI backend and the Streamlit frontend, use the following command:
```sh
uvicorn app:app --host 0.0.0.0 --port 8080 & streamlit run ui.py --server.port 8051 --server.address 0.0.0.0
```
This command will launch the API on port 8080 and the UI on port 8051.

### 4. Using Docker
To deploy the application using Docker, follow these steps:
#### Build the Docker Image
```sh
docker build -t langgraph-agent .
```
#### Run the Docker Container
```sh
docker run -p 8080:8080 -p 8051:8051 langgraph-agent
```
This will start the application within a Docker container, making it accessible on your local machine.

## API Endpoints
- **POST /chat**: This endpoint processes user messages and returns AI-generated responses. It expects a JSON payload containing the following:
  - `model_name`: The name of the model to be used (e.g., "llama3-70b-8192").
  - `system_prompt`: A predefined instruction to guide the AI agent’s behavior.
  - `messages`: A list of messages in the conversation history.

### Example Request
```json
{
  "model_name": "llama3-70b-8192",
  "system_prompt": "You are a helpful AI assistant.",
  "messages": ["Hello, how can you help me?"]
}
```

### Example Response
```json
{
  "messages": [
    {
      "type": "ai",
      "content": "Hello! How can I assist you today?"
    }
  ]
}
```

## Environment Variables
To configure API keys for external services, set the following environment variables:
- `TAVILY_API_KEY`: API key for Tavily search integration.
- `GROQ_API_KEY`: API key for Groq AI models.

## Usage Guide
1. Open your browser and navigate to `http://localhost:8051`.
2. Enter a system prompt and type your query into the text box.
3. Select the AI model you want to use from the dropdown menu.
4. Click the submit button to send the query.
5. View the AI-generated response displayed on the page.

## Troubleshooting
- **Issue: API not responding**
  - Ensure that FastAPI is running on port 8080.
  - Check if any errors are logged in the terminal.
- **Issue: Streamlit UI not loading**
  - Verify that Streamlit is running on port 8051.
  - Refresh the browser and check the terminal output.

## Contributing
If you would like to contribute to this project, follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m "Added new feature"`).
4. Push the branch (`git push origin feature-branch`).
5. Open a Pull Request.


End
