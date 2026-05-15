<%@ include file="comunes/cabecero.jsp"%> <%@ include
file="comunes/navegacion.jsp"%>

<div class="container py-4">
  <div class="surface-card p-4 p-md-5">
    <div class="text-center mb-4">
      <h3 class="mb-1">Editar Empleado</h3>
      <p class="text-soft mb-0">
        Actualiza los datos del empleado seleccionado.
      </p>
    </div>
    <form action="${urlEditar}" modelAttribute="empleadoForma" method="POST">
      <input type="hidden" name="idEmpleado" value="${empleado.idEmpleado}" />
      <div class="mb-3">
        <label for="nombreEmpleado" class="form-label">Nombre</label>
        <input
          type="text"
          class="form-control"
          id="nombreEmpleado"
          name="nombreEmpleado"
          required="true"
          value="${empleado.nombreEmpleado}"
        />
      </div>
      <div class="mb-3">
        <label for="departamento" class="form-label">Departamento</label>
        <input
          type="text"
          class="form-control"
          id="departamento"
          name="departamento"
          value="${empleado.departamento}"
        />
      </div>
      <div class="mb-3">
        <label for="sueldo" class="form-label">Sueldo</label>
        <input
          type="number"
          step="any"
          class="form-control"
          id="sueldo"
          name="sueldo"
          value="${empleado.sueldo}"
        />
      </div>
      <div class="text-center pt-2">
        <button type="submit" class="btn btn-warning btn-sm me-3">
          Editar
        </button>
        <a href="${urlInicio}" class="btn btn-danger btn-sm">Regresar</a>
      </div>
    </form>
  </div>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>
