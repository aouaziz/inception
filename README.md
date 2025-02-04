<p align="center">
    <img src="https://alphaville.github.io/optimization-engine/img/docker.gif" align="center" width="30%">
</p>

<h1 align="center">INCEPTION</h1>

<p align="center">
    <em><code>❯ A containerized development environment using Docker</code></em>
</p>

<p align="center">
    <img src="https://img.shields.io/github/license/aouaziz/inception?style=default&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
    <img src="https://img.shields.io/github/last-commit/aouaziz/inception?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
    <img src="https://img.shields.io/github/languages/top/aouaziz/inception?style=default&color=0080ff" alt="repo-top-language">
    <img src="https://img.shields.io/github/languages/count/aouaziz/inception?style=default&color=0080ff" alt="repo-language-count">
</p>

---

## 📍 Overview

**INCEPTION** is a containerized development environment that leverages Docker to create and manage isolated services. It provides a modular setup for deploying essential services such as MariaDB, Nginx, and WordPress, allowing users to build a fully functional LEMP stack within containers.

---

## 👾 Features

- **Dockerized Services:** MariaDB, Nginx, and WordPress running in isolated containers.
- **Customizable Configuration:** Modify `.env` and `docker-compose.yml` to fit your needs.
- **Scalability:** Easily extendable with additional services.
- **Secure & Lightweight:** Minimal overhead while maintaining a robust architecture.

---

## 🚀 Getting Started

### ☑️ Prerequisites

- **Container Runtime:** Docker & Docker Compose
- **Basic Unix/Linux knowledge**

### ⚙️ Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/aouaziz/inception.git
   ```
2. **Navigate to the project directory:**
   ```sh
   cd inception
   ```
3. **Build and start the containers:**
   ```sh
   docker-compose up --build -d
   ```

### 🤖 Usage

To check running containers:
```sh
docker ps
```
To stop and remove containers:
```sh
docker-compose down
```

### 🧪 Testing

To manually verify services, test Nginx, WordPress, and MariaDB connectivity using:
```sh
curl http://localhost
```

---

## 📌 Project Roadmap

- ✅ **Containerized LEMP Stack**
- 🚀 **Expandability with additional services**
- 🔄 **Advanced monitoring and logging**

---

## 🔰 Contributing

We welcome contributions! To contribute:

1. **Fork the repository.**
2. **Clone locally and create a new branch.**
3. **Develop and test your changes.**
4. **Submit a pull request.**

For detailed guidelines, see the [Contributing Guide](https://github.com/aouaziz/inception/blob/main/CONTRIBUTING.md).

---

## 🎗 License

This project is protected under the [SELECT-A-LICENSE](https://choosealicense.com/licenses) License. For more details, refer to the [LICENSE](https://choosealicense.com/licenses/) file.

---

## 🙌 Acknowledgments

- **Contributors & Open-Source Projects** that inspired this work.
- **Docker & DevOps Community** for their ongoing contributions to containerization.

---

