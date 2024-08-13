# Bootstore-Stack

Bootstore-Stack is a full-stack web application that provides a web interface for managing bookstore information. This project consists of two main components:

- **Bookstore-Angular**: The frontend application built with Angular.
- **Bookstore-Spring**: The backend application built with Spring Boot.
- **MySQL Database**: Used for storing data.
- **Docker Compose**: Used to orchestrate the entire stack.

## Table of Contents

- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Application](#running-the-application)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)

## Project Structure

![image](https://github.com/user-attachments/assets/bc891594-baed-4e0f-bfa4-ecddd0cb0e26)

## Prerequisites

Before running this project, ensure that you have the following installed on your machine:

- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **Docker Compose**: [Install Docker Compose](https://docs.docker.com/compose/install/)
- **Node.js**: [Install Node.js](https://nodejs.org/)
- **Java JDK 11+**: [Install JDK](https://openjdk.java.net/install/)

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/bootstore-stack.git
   cd bootstore-stack

2. **Build the Angular frontend**:
   ```bash
   cd bookstore-angular
   npm install
   npm run build
   cd ..

3. **Build the Spring Boot backend**:
   ```bash
   cd bookstore-spring
   ./gradlew build
   cd ..
  
4. **Set up the MySQL database**:
   The MySQL database is automatically configured using Docker Compose.

## Running the Application
To start the entire stack (Angular frontend, Spring Boot backend, and MySQL database), run the following command from the root directory:

 ```bash
  docker-compose up --build

This command will:

- Start the MySQL database and initialize it with the necessary schema.
- Start the Spring Boot backend, which will connect to the MySQL database.
- Serve the Angular frontend.
- You can access the application at http://localhost:4200 and the Spring Boot API at http://localhost:8080

## Usage

- Access the Web Interface: Navigate to http://localhost:4200 in your web browser to access the Angular-based user interface.

- Manage Bookstore Data: Use the web interface to input and manage bookstore data, which is then saved to the MySQL database through the Spring Boot backend.

## API Endpoints

Here are the primary API endpoints provided by the Spring Boot backend:

- **GET** /api/books: Retrieve a list of all books.
- **POST** /api/books: Add a new book.
- **PUT** /api/books/{id}: Update an existing book.
- **DELETE** /api/books/{id}: Delete a book by its ID.
