# Use a imagem base do NGINX
FROM nginx:1.25.5

# Remove o arquivo de configuração padrão do NGINX
RUN rm /etc/nginx/conf.d/default.conf

# Copia o arquivo de configuração personalizado para o diretório de configuração do NGINX
COPY nginx.conf /etc/nginx/conf.d/

# Copie o arquivo de script de entrada para dentro do contêiner
COPY entrypoint.sh /usr/local/bin/

# Define as permissões de execução para o script de entrada
RUN chmod +x /usr/local/bin/entrypoint.sh

# Define o diretório de trabalho
WORKDIR /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

# Especifica o script de entrada do contêiner
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

