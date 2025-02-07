FROM python:3.9-slim

COPY . /app/

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt 

EXPOSE 8080 8051

# Start both FastAPI and Streamlit servers
CMD ["sh", "-c", "uvicorn app:app --host 0.0.0.0 --port 8000 & streamlit run ui.py --server.port 8501 --server.address 0.0.0.0"]
