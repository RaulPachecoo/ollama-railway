FROM ollama/ollama
EXPOSE 11434
ENTRYPOINT ["ollama"]
CMD ["serve", "--host", "0.0.0.0", "--port", "11434"]
