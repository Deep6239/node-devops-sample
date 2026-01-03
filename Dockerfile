# ---- Base Image ----
FROM node:18-alpine

# ---- Create non-root user ----
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# ---- Set working directory ----
WORKDIR /app

# ---- Copy dependency files ----
COPY package*.json ./

# ---- Install dependencies ----
RUN npm install --only=production

# ---- Copy source code ----
COPY src ./src

# ---- Change ownership ----
RUN chown -R appuser:appgroup /app

# ---- Switch user ----
USER appuser

# ---- Expose port ----
EXPOSE 3000

# ---- Start app ----
CMD ["node", "src/app.js"]
