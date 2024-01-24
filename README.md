# Dockerized Jenkins, Nginx, MySQL, and Ansible Integration

This project demonstrates the use of Docker and Docker Compose to create a development environment with the following components:

- Jenkins Server
- Preconfigured Nginx Web Server
- Preconfigured MySQL Database Server
- Remote Host Ubuntu Server

## Overview

The project includes a set of Docker containers that facilitate the setup and integration of Jenkins, Nginx, MySQL, and Ansible. The goal is to automate the process of creating a database and table, feeding it with data, and displaying the data through a simple PHP page hosted by Nginx.

## Components

### Jenkins Server

The Jenkins server is containerized for easy setup and management. It is configured to integrate with Ansible to automate tasks.

### Nginx Web Server

A preconfigured Nginx server is included, set up to host a simple PHP page that displays data from the MySQL database. Nginx is listening on port 8000.

### MySQL Database Server

The MySQL database server is containerized and ready for use. The project includes a script to create the necessary database and table structure.

### Remote Host Ubuntu Server

A remote Ubuntu server is included in the setup. Ansible is used to interact with this server and automate various tasks.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/mina14george/Dockerized-Jenkins-Mysql-Nginx.git
  
   ```

2. Start the Docker containers using Docker Compose:

   ```bash
   docker-compose up -d
   ```

3. Access Jenkins at `http://localhost:8080` and set it up using the initial admin password.

4. Configure Jenkins to integrate with Ansible.

5. Create a Jenkins job that triggers Ansible to run the playbook responsible for setting up the database and table.

6. Jenkins will also trigger a job to populate the database with sample data.

7. The Nginx server hosts a simple PHP page at `http://localhost:8000` that displays the data in a table with minimal HTML and CSS.

8. Using Jenkins, you can easily trigger a job to update the data displayed on the PHP page.

## Note

Ensure that Docker and Docker Compose are installed on your system before running the project.

Feel free to customize the Ansible playbook, Jenkins jobs, or any other components to fit your specific requirements.

## Contributor

- Mina George <mena.george55@gmail.com>
