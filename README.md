# Inception Project  

## ⚠️ Compatibility Notice  

This project is designed to run inside a Linux Virtual Machine (as required by the subject).

On Linux, the data volumes are mounted under:  

```bash
/home/<login>/data/mysql
/home/<login>/data/wordpress
```
These directories are automatically created by the Makefile:  

```bash
@mkdir -p /home/<login>/data/mysql
@mkdir -p /home/<login>/data/wordpress
```

## ⚠️ On macOS or Windows, these absolute paths do not exist, so the make command will fail.
If you want to test the project locally on macOS/Windows, you will need to:  

- Update the volume paths in docker-compose.yml to use a relative directory (e.g., ./data/...).
- Or manually create equivalent folders adapted to your system.



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

All environment variables are stored in `/src/.env`:

```env
DOMAIN_NAME="proche-c.42.fr"

# MARIADB

MYSQL_HOSTNAME=""
MYSQL_DATABASE=""
MYSQL_ROOT_USER=""
MYSQL_ROOT_PASSWORD=""
MYSQL_USER=""
MYSQL_PASSWORD=""

# WORDPRESS

WORDPRESS_TITLE=""
WORDPRESS_ADMIM=""
WORDPRESS_ADMIM_PASS=""
WORDPRESS_ADMIM_EMAIL=""
WORDPRESS_USER="proche-c"
WORDPRESS_EMAIL=""
WORDPRESS_USER_PASS=""
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


