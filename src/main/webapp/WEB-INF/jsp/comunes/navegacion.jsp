<!-- Agregar los url de la aplicacion -->
<c:set var="urlInicio">
  <c:url value="${application.contextPath}/" />
</c:set>

<c:set var="urlAgregar">
  <c:url value="${application.contextPath}/agregar" />
</c:set>

<div class="container mt-3">
  <nav class="navbar navbar-expand-lg surface-card px-3 py-2">
    <div class="container-fluid">
      <a
        class="navbar-brand fw-bold"
        href="${urlInicio}"
        style="color: var(--brand)"
        >Sistema de Empleados</a
      >
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <a
              class="nav-link active"
              aria-current="page"
              href="${urlInicio}"
              style="color: var(--ink-main)"
              >Inicio</a
            >
          </li>
        </ul>
        <a
          class="btn btn-sm px-3 py-2"
          href="${urlAgregar}"
          style="background: var(--brand); color: #fff"
          >+ Agregar Empleado</a
        >
      </div>
    </div>
  </nav>
</div>
