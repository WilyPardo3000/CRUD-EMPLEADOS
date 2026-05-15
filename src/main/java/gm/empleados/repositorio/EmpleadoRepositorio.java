package gm.empleados.repositorio;

import gm.empleados.modelo.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EmpleadoRepositorio extends JpaRepository<Empleado, Integer> {
	List<Empleado> findByNombreEmpleadoContainingIgnoreCaseOrDepartamentoContainingIgnoreCase(String nombre, String departamento);
}
