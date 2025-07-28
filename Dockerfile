FROM node:18-slim

# تثبيت n8n
RUN npm install -g n8n

# إعداد البيئة
ENV N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=changeme \
    N8N_HOST=localhost \
    WEBHOOK_URL=http://localhost/

EXPOSE 5678

CMD ["n8n"]
