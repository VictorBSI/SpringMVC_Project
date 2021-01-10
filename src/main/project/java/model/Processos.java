package main.project.java.model;

public class Processos {
	private int id;
	private String nome;
	private int id_p;
	private String tipoprocesso;
	private String numero;
	private String dataentrada;
	private String valorrecurso;
	private String objetivo;

	public Processos() {

	}

	// Contructor de TIPO DE PROCESSO
	public Processos(int id, String nome) {
		super();
		this.id = id;
		this.nome = nome;
	}

	// Contructor de PROCESSO
	public Processos(int id_p, String tipoprocesso, String numero, String dataentrada, String valorrecurso,
			String objetivo) {
		super();
		this.id_p = id_p;
		this.tipoprocesso = tipoprocesso;
		this.numero = numero;
		this.dataentrada = dataentrada;
		this.valorrecurso = valorrecurso;
		this.objetivo = objetivo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getId_p() {
		return id_p;
	}

	public void setId_p(int id_p) {
		this.id_p = id_p;
	}

	public String getTipoprocesso() {
		return tipoprocesso;
	}

	public void setTipoprocesso(String tipoprocesso) {
		this.tipoprocesso = tipoprocesso;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getDataentrada() {
		return dataentrada;
	}

	public void setDataentrada(String dataentrada) {
		this.dataentrada = dataentrada;
	}

	public String getValorrecurso() {
		return valorrecurso;
	}

	public void setValorrecurso(String valorrecurso) {
		this.valorrecurso = valorrecurso;
	}

	public String getObjetivo() {
		return objetivo;
	}

	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}

}
