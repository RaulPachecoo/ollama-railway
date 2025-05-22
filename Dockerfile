FROM ubuntu:22.04

# Instala curl, bash y dependencias si necesitas
RUN apt-get update && apt-get install -y curl

# Copia el binario ollama (o instala desde la imagen oficial)
# Para simplificar, instalamos ollama desde la imagen oficial usando multi-stage build:

FROM ollama/ollama as ollama
FROM ubuntu:22.04

COPY --from=ollama /usr/local/bin/ollama /usr/local/bin/ollama

EXPOSE 11434

ENTRYPOINT ["ollama"]
CMD ["serve", "--host", "0.0.0.0", "--port", "11434"]
