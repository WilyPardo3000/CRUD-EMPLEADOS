# Sistema de Empleados

Aplicacion web para gestionar empleados con operaciones CRUD y busqueda por nombre o departamento.

## Descripcion

Este proyecto esta desarrollado con Spring Boot siguiendo una arquitectura en capas (controlador, servicio y repositorio), usando JSP para las vistas y MySQL para persistencia.

No es una API REST pura; es una aplicacion web MVC renderizada en servidor.

## Funcionalidades

- Listado de empleados
- Agregar empleado
- Editar empleado
- Eliminar empleado
- Buscar empleado por nombre o departamento
- Interfaz grafica modernizada y responsive

## Tecnologias

- Java 25
- Spring Boot 4
- Spring MVC
- Spring Data JPA / Hibernate
- JSP + JSTL
- MySQL
- Maven Wrapper
- Bootstrap 5

## Estructura principal

```text
src/main/java/gm/empleados/
	controlador/
	servicio/
	repositorio/
	modelo/

src/main/resources/
	application.properties

src/main/webapp/WEB-INF/jsp/
	index.jsp
	agregar.jsp
	editar.jsp
	comunes/
```

## Requisitos

- JDK 25
- Maven (opcional, puedes usar el wrapper)
- MySQL en ejecucion

## Configuracion

Edita los datos de conexion en src/main/resources/application.properties:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/empleados_db?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=1234
spring.jpa.hibernate.ddl-auto=update

server.servlet.context-path=/empleados
```

## Ejecucion

### Windows (PowerShell)

```powershell
./mvnw.cmd spring-boot:run
```

### Linux / macOS

```bash
./mvnw spring-boot:run
```

La aplicacion queda disponible en:

http://localhost:8080/empleados

## Rutas web principales

- GET /empleados/
- GET /empleados/agregar
- POST /empleados/agregar
- GET /empleados/editar?idEmpleado={id}
- POST /empleados/editar
- GET /empleados/eliminar?idEmpleado={id}
- GET /empleados/?busqueda={texto}

## Pruebas y compilacion

Compilar sin tests:

```powershell
./mvnw.cmd -DskipTests compile
```

Ejecutar tests:

```powershell
./mvnw.cmd test
```

## Repositorio

https://github.com/WilyPardo3000/CRUD-EMPLEADOS
