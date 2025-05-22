FROM ollama/ollama
EXPOSE 11434
CMD ["sh", "-c", "ollama serve --host 0.0.0.0 --port ${PORT:-11434}"]



