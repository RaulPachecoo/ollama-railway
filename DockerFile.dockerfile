FROM ollama/ollama
EXPOSE 11434
CMD ["ollama", "serve", "--host", "0.0.0.0", "--port", "11434"]
