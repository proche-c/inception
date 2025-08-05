# Inception Project

## 🧠 Introduction

This project aims to deepen your knowledge of **system administration** using **Docker** and **Docker Compose**. You will set up a small infrastructure by building and configuring several Docker containers from scratch, each with a specific purpose. The project must be completed inside a virtual machine.

## 📦 Project Overview

You will build a mini virtual infrastructure with the following services:

- **NGINX**: Acts as the entry point with **TLSv1.2 or TLSv1.3**.
- **WordPress**: Installed with **php-fpm**, served via NGINX.
- **MariaDB**: Stores the WordPress database.
- **Volumes**:
  - One for WordPress database data.
  - One for WordPress static files.
- **Docker Network**: Ensures container interconnectivity.

Each container must:
- Be built from a **Dockerfile** (no pre-built images allowed).
- Use either the penultimate stable version of **Alpine** or **Debian**.
- Restart automatically in case of crash.

The infrastructure is accessed only via **HTTPS (port 443)** and is reachable through a custom domain name (`login.42.fr`).

---

## 🛠️ Technologies Used

- Docker
- Docker Compose
- NGINX
- WordPress with php-fpm
- MariaDB
- TLS certificates (self-signed or generated)
- Environment variables and secrets
- Dokerfile

---


---

## 🔐 Environment Configuration

All environment variables are stored in `.env`:

```env
# Domain
DOMAIN_NAME=proche-c.42.fr

# MariaDB
MYSQL_ROOT_PASSWORD=...
MYSQL_DATABASE=...
MYSQL_USER=...
MYSQL_PASSWORD=...

# WordPress
WP_ADMIN_USER=...
WP_ADMIN_PASSWORD=...
WP_USER=...
WP_USER_PASSWORD=...
```

## 🚀 Installation & Usage  

1. Clone the repository.
2. Run:
 ```bash
   make
   ```
This command will:  

+ Build all Docker images via docker-compose.
+ Launch the infrastructure with proper network, volumes, and containers.

3. Open a browser and go to: https://proche-c.42.fr


