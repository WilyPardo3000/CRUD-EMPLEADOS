# 👨‍💼 Sistema de Empleados - API REST

## 📌 Descripción

**Sistema de Empleados** es una aplicación backend desarrollada con Spring Boot que permite la gestión de empleados dentro de una organización.

El sistema implementa una API REST para realizar operaciones CRUD sobre los empleados, facilitando el control de información como datos personales, departamento y salario.

---

## 🧠 Objetivo del proyecto

Este proyecto tiene como objetivo aplicar conceptos fundamentales de desarrollo backend, tales como:

- Arquitectura en capas
- Persistencia con JPA / Hibernate
- Creación de servicios REST
- Manejo de datos en base de datos

---

## 🏗️ Arquitectura del sistema

El sistema sigue una arquitectura en capas que separa responsabilidades:

### 🌐 Controller

- Expone los endpoints REST
- Maneja las solicitudes HTTP (GET, POST, PUT, DELETE)

### ⚙️ Service

- Contiene la lógica de negocio
- Valida y procesa la información

### 📂 Repository

- Interactúa con la base de datos
- Usa Spring Data JPA para operaciones CRUD

### 🧩 Model (Entity)

- Representa la entidad **Empleado**
- Mapea la tabla en la base de datos

---

## 📦 Entidad principal

### 👨‍💼 Empleado

Representa a un trabajador dentro del sistema.

**Atributos comunes:**

- ID del empleado
- Nombre
- Departamento
- Salario

---

## 📦 Funcionalidades

El sistema permite:

- ✅ Registrar empleados
- 📄 Listar todos los empleados
- 🔍 Buscar empleado por Nombre o Departamento
- ✏️ Actualizar datos del empleado
- ❌ Eliminar empleados

---

## 🔄 Flujo de funcionamiento

1. El cliente (Postman o frontend) realiza una petición HTTP
2. El Controller recibe la solicitud
3. El Service aplica la lógica de negocio
4. El Repository consulta o guarda en la base de datos
5. Se devuelve la respuesta al cliente

---

## 🛠️ Tecnologías utilizadas

- Java
- Spring Boot
- Spring Data JPA
- Hibernate
- MySQL
- Maven

---

## 📊 Estructura del proyecto

```bash
src/
 ├── main/
 │   ├── java/
 │   │   ├── controller/
 │   │   ├── service/
 │   │   ├── repository/
 │   │   └── model/
 │   └── resources/
 │       └── application.properties
```

---

## 🚀 Ejecución del proyecto

1. Clonar el repositorio:

```bash
git clone https://github.com/ASVWilfredo/SistemaDeEmpleados.git
```

2. Configurar la base de datos en `application.properties`

3. Ejecutar el proyecto:

```bash
mvn spring-boot:run
```

4. Probar los endpoints con Postman o navegador

---

## 💡 Endpoints principales

- `GET /empleados` → Obtener todos los empleados
- `GET /empleados/{id}` → Obtener empleado por ID
- `POST /empleados` → Crear empleado
- `PUT /empleados/{id}` → Actualizar empleado
- `DELETE /empleados/{id}` → Eliminar empleado

---

## 🎯 Conclusión

Este proyecto implementa una API REST para la gestión de empleados, aplicando buenas prácticas de desarrollo backend como la separación en capas, uso de JPA para persistencia y diseño orientado a servicios, lo que lo hace escalable y fácil de mantener.

---
