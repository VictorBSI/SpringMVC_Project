package main.project.java.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import main.project.java.dao.ProjectDAO;
import main.project.java.model.Processos;

@Controller
public class MainController {
	@Autowired
	private ProjectDAO projectDAO;

	//Página inicial com a lista de tipos de processos
	@RequestMapping(value = "/")
	public ModelAndView listProject(ModelAndView model) throws IOException {
		List<Processos> listProject = projectDAO.list();
		model.addObject("listProject", listProject);
		model.setViewName("home");

		return model;
	}
	
	//Página com a lista de processos
	@RequestMapping(value = "/viewProcess")
	public ModelAndView listProjectP(ModelAndView model) throws IOException {
		List<Processos> listProcess = projectDAO.listP();
		model.addObject("listProcess", listProcess);
		model.setViewName("processo");

		return model;
	}

	//Página de adição de um novo tipo de processo
	@RequestMapping(value = "/newProject", method = RequestMethod.GET)
	public ModelAndView newProject(ModelAndView model) {
		Processos newProject = new Processos();
		model.addObject("project", newProject);
		model.setViewName("formulariotp");
		return model;
	}

	//Página de adição de novo processo
	@RequestMapping(value = "/newProcess", method = RequestMethod.GET)
	public ModelAndView newProcess(ModelAndView model) {
		Processos newProcess = new Processos();
		model.addObject("process", newProcess);
		model.setViewName("formulariop");
		return model;
	}

	//Salvar um novo tipo de processo ou salvar a edição de um existente
	@RequestMapping(value = "/saveProject", method = RequestMethod.POST)
	public ModelAndView saveProject(@ModelAttribute Processos project) {
		projectDAO.saveOrUpdate(project);
		return new ModelAndView("redirect:/");
	}

	//Salvar um novo processo ou salvar a edição de um existente
	@RequestMapping(value = "/saveProcess", method = RequestMethod.POST)
	public ModelAndView saveProcess(@ModelAttribute Processos process) {
		projectDAO.saveOrUpdateP(process);
		return new ModelAndView("redirect:/viewProcess");
	}

	//Redireciona para a página de edição de um tipo de processo
	@RequestMapping(value = "/editProject", method = RequestMethod.GET)
	public ModelAndView editProject(HttpServletRequest request) {
		Integer projectId = Integer.parseInt(request.getParameter("id"));
		Processos project = projectDAO.get(projectId);
		ModelAndView model = new ModelAndView("formulariotp");
		model.addObject("project", project);

		return model;
	}

	//Redireciona para a página de edição de um processo
	@RequestMapping(value = "/editProcess", method = RequestMethod.GET)
	public ModelAndView editProcess(HttpServletRequest request) {
		Integer processId = Integer.parseInt(request.getParameter("id"));
		Processos process = projectDAO.getP(processId);
		ModelAndView model = new ModelAndView("formulariop");
		model.addObject("process", process);

		return model;
	}

	//Resultado da pesquisa de processo
	@RequestMapping(value = "/resultProcess", method = RequestMethod.GET)
	public ModelAndView searchProcess(HttpServletRequest request) {
		String processName = (String) request.getParameter("numero");
		Processos process = projectDAO.getProcesso(processName);
		ModelAndView model = new ModelAndView("resultproc");
		model.addObject("process", process);

		return model;
	}

	//Página de pesquisa de processo
	@RequestMapping(value = "/searchProcess", method = RequestMethod.GET)
	public ModelAndView searchTeste(ModelAndView model) {
		Processos newProcess = new Processos();
		model.addObject("process", newProcess);
		model.setViewName("searchproc");
		return model;
	}

	//Deletar um tipo de processo
	@RequestMapping(value = "/deleteProject", method = RequestMethod.GET)
	public ModelAndView deleteProject(HttpServletRequest request) {
		int projectId = Integer.parseInt(request.getParameter("id"));
		projectDAO.delete(projectId);

		return new ModelAndView("redirect:/");
	}

	//Deletar um processo
	@RequestMapping(value = "/deleteProcess", method = RequestMethod.GET)
	public ModelAndView deleteProcess(HttpServletRequest request) {
		int processtId = Integer.parseInt(request.getParameter("id"));
		projectDAO.deleteP(processtId);

		return new ModelAndView("redirect:/viewProcess");
	}
}
