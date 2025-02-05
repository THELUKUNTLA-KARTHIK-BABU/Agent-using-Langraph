LangGraph AI Agent

This project is a LangGraph-based AI Agent using FastAPI for the backend and Streamlit for the frontend.

Features

Uses LangGraph to create an AI agent with Groq LLMs.

Integrates Tavily Search for web searches.

Simple FastAPI backend to handle chat interactions.

Streamlit UI for easy user interaction.

Setup Instructions

1. Clone the Repository

git clone <repo-link>
cd <repo-folder>

2. Install Dependencies

pip install -r requirements.txt

3. Set API Keys

Update your environment variables:

export GROQ_API_KEY='your_groq_api_key'
export TAVILY_API_KEY='your_tavily_api_key'

4. Run the Backend (FastAPI)

python app.py

This will start the FastAPI server at http://127.0.0.1:8080

5. Run the Frontend (Streamlit)

streamlit run ui.py

This will open the UI in your web browser.

How It Works

The FastAPI server processes chat requests and interacts with the Groq LLM.

The LangGraph agent processes user inputs and fetches search results if needed.

The Streamlit UI allows users to interact with the AI agent in a simple chat interface.

API Endpoint

POST /chat: Sends a request to the AI agent.

Request Body:

{
  "model_name": "llama3-70b-8192",
  "system_prompt": "Define the AI Agent",
  "messages": ["User message here"]
}

Response:

{
  "messages": [
    {"type": "ai", "content": "AI response here"}
  ]
}

Available Models

llama3-70b-8192

mixtral-8x7b-32768

### **What This Project Does**  

This project is a **LangGraph AI Agent**, which is a chatbot that uses **FastAPI** for backend processing and **Streamlit** for the user interface. It allows users to interact with an AI model that can process queries, provide intelligent responses, and fetch web search results if needed.

### **How It Works**  

1. **User interacts with the AI agent**  
   - Users can enter a message through the **Streamlit UI**.  
   - They also define a **system prompt**, which helps guide the AI’s behavior.  
   - Users can choose between **two AI models**: `llama3-70b-8192` or `mixtral-8x7b-32768`.

2. **The request is sent to the FastAPI backend**  
   - The request includes the selected **model**, **system prompt**, and **user message**.  
   - FastAPI processes this request and passes it to **LangGraph**, which manages the AI agent's logic.

3. **The AI agent generates a response**  
   - The **ChatGroq LLM** processes the user’s query and provides an AI-generated response.  
   - If needed, the agent can also fetch web search results using **Tavily Search**.

4. **Response is displayed in the UI**  
   - The processed response is returned to the **Streamlit UI**, where the user can view the AI’s answer.  

### **Why This is Useful**  
- **FastAPI** makes the backend lightweight and fast.  
- **LangGraph** helps manage AI reasoning and external tool usage.  
- **Streamlit** provides a simple web interface for interaction.  
- **Supports multiple AI models** for different use cases.  
- **Web search integration** improves AI-generated responses when needed.  

This setup creates a **powerful, interactive AI agent** that can be used for chat-based AI tasks, research assistance, or general question-answering. 
