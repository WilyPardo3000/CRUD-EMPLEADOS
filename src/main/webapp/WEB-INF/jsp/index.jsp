<%@ include file="comunes/cabecero.jsp"%>

<%@ include file="comunes/navegacion.jsp"%>

<div class="container py-4">
    <div class="surface-card p-4 p-md-5 mb-4">
        <div class="row align-items-center g-4">
            <div class="col-lg-7">
                <h1 class="mb-2">Gestion de Empleados</h1>
                <p class="text-soft mb-0">Consulta, busca y administra tu personal desde un solo panel.</p>
            </div>
            <div class="col-lg-5">
                <form action="${urlInicio}" method="GET" class="d-flex gap-2">
                    <input type="text" class="form-control" name="busqueda" placeholder="Buscar por nombre o departamento" value="${busqueda}">
                    <button type="submit" class="btn" style="background: var(--brand); color:#fff;">Buscar</button>
                </form>
            </div>
        </div>

        <div class="row g-3 mt-2">
            <div class="col-sm-6 col-lg-4">
                <div class="metric-chip">
                    <div class="text-soft small">Resultados mostrados</div>
                    <div class="h4 m-0">${empleados.size()}</div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="metric-chip">
                    <div class="text-soft small">Total de empleados</div>
                    <div class="h4 m-0">${totalEmpleados}</div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="metric-chip h-100 d-flex flex-column justify-content-center">
                    <div class="text-soft small">Filtro actual</div>
                    <div class="fw-semibold">
                        <c:choose>
                            <c:when test="${not empty busqueda}">
                                ${busqueda}
                            </c:when>
                            <c:otherwise>
                                Sin filtro
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="surface-card p-3 p-md-4">
        <c:choose>
            <c:when test="${empty empleados}">
                <div class="alert mb-0" style="background: #fff2e3; border: 1px solid #f4d2b3; color: #7b4b1c;">
                    No se encontraron empleados para la busqueda realizada.
                </div>
            </c:when>
            <c:otherwise>
                <div class="table-responsive">
                    <table class="table table-hover table-bordered align-middle mb-0">
                        <thead class="text-center" style="background: #dceff0;">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Departamento</th>
                            <th scope="col">Sueldo</th>
                            <th scope="col">Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="empleado" items="${empleados}">
                            <tr>
                                <th scope="row">${empleado.idEmpleado}</th>
                                <td>${empleado.nombreEmpleado}</td>
                                <td>${empleado.departamento}</td>
                                <td>
                                    <fmt:formatNumber type="currency" value="${empleado.sueldo}" currencyCode="MXN"/>
                                </td>
                                <td class="text-center">
                                    <c:set var="urlEditar">
                                        <c:url value="${application.contextPath}/editar">
                                            <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                                        </c:url>
                                    </c:set>
                                    <a href="${urlEditar}" class="btn btn-warning btn-sm me-2">Editar</a>
                                    <c:set var="urlEliminar">
                                        <c:url value="${application.contextPath}/eliminar">
                                            <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                                        </c:url>
                                    </c:set>
                                    <a href="${urlEliminar}" class="btn btn-danger btn-sm">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>

