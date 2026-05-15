package gm.empleados.controlador;

import gm.empleados.modelo.Empleado;
import gm.empleados.servicio.EmpleadoServicio;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class IndexControlador {
    private static final Logger logger = LoggerFactory.getLogger(IndexControlador.class);

    @Autowired
    EmpleadoServicio empleadoServicio;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String iniciar(@RequestParam(required = false) String busqueda, ModelMap modelo) {
        List<Empleado> empleados = empleadoServicio.buscarEmpleados(busqueda);
        empleados.forEach(empleado -> logger.info(empleado.toString()));
        // Compartir el modelo con la vista
        modelo.put("empleados", empleados);
        modelo.put("busqueda", busqueda == null ? "" : busqueda);
        modelo.put("totalEmpleados", empleadoServicio.listarEmpleados().size());
        return "index"; //index.jsp
    }

    @RequestMapping(value="/agregar", method = RequestMethod.GET)
    public String mostrarAgregar() {
        return "agregar"; //agregar.jsp
    }

    @RequestMapping(value="/agregar", method = RequestMethod.POST)
    public String agregar(@ModelAttribute("empleadoForma") Empleado empleado) {
        logger.info("Empleado a agregar: " + empleado);
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/"; // redirige al path "/"
    }

    @RequestMapping(value="/editar", method = RequestMethod.GET)
    public String mostrarEditar(@RequestParam int idEmpleado, ModelMap modelo) {
        Empleado empleado = empleadoServicio.buscarEmpleadoPorId(idEmpleado);
        logger.info("Empleado a editar: " + empleado);
        modelo.put("empleado", empleado);
        return "editar"; // mostrar editar.jsp
    }

    @RequestMapping(value="/editar",method = RequestMethod.POST)
    public String editar(@ModelAttribute("empleadoForma") Empleado empleado) {
        logger.info("Empleado a guardar: " + empleado);
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/"; // redirigir al controlador "/"
    }

    @RequestMapping(value="/eliminar", method = RequestMethod.GET)
    public String eliminar(@RequestParam int idEmpleado) {
        Empleado empleado = new Empleado();
        empleado.setIdEmpleado(idEmpleado);
        logger.info("Empleado a eliminar: " + idEmpleado);
        empleadoServicio.eliminarEmpleado(empleado);
        return "redirect:/";
    }
}
