package main.project.java.dao;

import java.util.List;

import main.project.java.model.Processos;


public interface ProjectDAO {
	
	public void saveOrUpdate(Processos project);
	public void saveOrUpdateP(Processos project);
	
	public int delete(int projectId);
	public int deleteP(int projectId);
    
    public Processos get(int projectId);
    public Processos getProcesso(String numeroP);
    public Processos getP(int projectId);
     
    public List<Processos> list();
    public List<Processos> listP();
    public List<Processos> listTP();
}
