package main.project.java.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import main.project.java.model.Processos;

public class ProjectDAOImpl implements ProjectDAO {
	private JdbcTemplate jdbcTemplate;

	public ProjectDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//Queries para salvar um novo tipo de processo ou salvar a edição de um existente
	@Override
	public void saveOrUpdate(Processos processo) {
		if (processo.getId() > 0) {
			// update
			String sql = "UPDATE tipo_processo SET nome=? " + "WHERE id=?";
			jdbcTemplate.update(sql, processo.getNome(), processo.getId());
		} else {
			// insert
			String sql = "INSERT INTO tipo_processo (nome)" + " VALUES (?)";
			jdbcTemplate.update(sql, processo.getNome());
		}

	}

	//Queries para salvar um novo processo ou salvar a edição de um existente
	@Override
	public void saveOrUpdateP(Processos processop) {
		if (processop.getId_p() > 0) {
			// update

			String sql = "UPDATE processo SET tipoprocesso=?, numero=?, dataentrada=?," + "valorrecurso=?, objetivo=? "
					+ "WHERE processo.id=?";
			jdbcTemplate.update(sql, processop.getTipoprocesso(), processop.getNumero(), processop.getDataentrada(),
					processop.getValorrecurso(), processop.getObjetivo(), processop.getId_p());
		} else {
			// insert

			String sql = "INSERT INTO processo (tipoprocesso, numero, dataentrada," + "valorrecurso, objetivo)"
					+ " VALUES (?,?,?,?,?)";
			jdbcTemplate.update(sql, processop.getTipoprocesso(), processop.getNumero(), processop.getDataentrada(),
					processop.getValorrecurso(), processop.getObjetivo());

		}

	}

	@Override
	public int delete(int id) {
		String sql = "DELETE FROM tipo_processo WHERE id=" + id;
		return jdbcTemplate.update(sql);

	}

	@Override
	public int deleteP(int id) {
		String sql = "DELETE FROM processo WHERE processo.id=" + id;
		return jdbcTemplate.update(sql);

	}

	//Query para retornar um tipo de processo específico por Id
	@Override
	public Processos get(int processoId) {
		String sql = "SELECT * FROM tipo_processo WHERE id=" + processoId;
		return jdbcTemplate.query(sql, new ResultSetExtractor<Processos>() {

			@Override
			public Processos extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					Processos processo = new Processos();
					processo.setId(rs.getInt("id"));
					processo.setNome(rs.getString("nome"));
					return processo;
				}

				return null;
			}

		});
	}

	//Query para retornar um processo específico por Id
	@Override
	public Processos getP(int processoId) {
		String sql = "SELECT * FROM processo WHERE processo.id=" + processoId;
		return jdbcTemplate.query(sql, new ResultSetExtractor<Processos>() {

			@Override
			public Processos extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					Processos processop = new Processos();
					processop.setId_p(rs.getInt("id"));
					processop.setTipoprocesso(rs.getString("tipoprocesso"));
					processop.setNumero(rs.getString("numero"));
					processop.setDataentrada(rs.getString("dataentrada"));
					processop.setValorrecurso(rs.getString("valorrecurso"));
					processop.setObjetivo(rs.getString("objetivo"));
					return processop;
				}

				return null;
			}

		});
	}

	//Query para retornar um processo específico por nome
	@Override
	public Processos getProcesso(String numeroP) {
		String sql = "SELECT * FROM processo WHERE processo.numero=" + numeroP;
		return jdbcTemplate.query(sql, new ResultSetExtractor<Processos>() {

			@Override
			public Processos extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					Processos processotp = new Processos();
					processotp.setId_p(rs.getInt("id"));
					processotp.setTipoprocesso(rs.getString("tipoprocesso"));
					processotp.setNumero(rs.getString("numero"));
					processotp.setDataentrada(rs.getString("dataentrada"));
					processotp.setValorrecurso(rs.getString("valorrecurso"));
					processotp.setObjetivo(rs.getString("objetivo"));
					return processotp;
				}

				return null;
			}

		});
	}
	
	//Query para listar todos os itens da tabela tipo_processo
	@Override
	public List<Processos> list() {
		String sql = "SELECT * FROM tipo_processo";

		RowMapper<Processos> rowMapper = new RowMapper<Processos>() {

			@Override
			public Processos mapRow(ResultSet rs, int rowNum) throws SQLException {
				Integer id = rs.getInt("id");
				String name = rs.getString("nome");
				return new Processos(id, name);
			}
		};
		return jdbcTemplate.query(sql, rowMapper);
	}

	@Override
	public List<Processos> listTP() {
		String sql = "SELECT * FROM tipo_processo";

		RowMapper<Processos> rowMapper = new RowMapper<Processos>() {

			@Override
			public Processos mapRow(ResultSet rs, int rowNum) throws SQLException {
				Integer id = rs.getInt("id");
				String name = rs.getString("nome");
				return new Processos(id, name);
			}
		};
		return jdbcTemplate.query(sql, rowMapper);
	}
	
	//Query para listar todos os itens da tabela processo
	@Override
	public List<Processos> listP() {
		String sql = "SELECT * FROM processo";

		RowMapper<Processos> rowMapper = new RowMapper<Processos>() {

			@Override
			public Processos mapRow(ResultSet rs, int rowNum) throws SQLException {
				Integer id_p = rs.getInt("id");
				String tipoprocesso = rs.getString("tipoprocesso");
				String numero = rs.getString("numero");
				String dataentrada = rs.getString("dataentrada");
				String valorrecurso = rs.getString("valorrecurso");
				String objetivo = rs.getString("objetivo");
				return new Processos(id_p, tipoprocesso, numero, dataentrada, valorrecurso, objetivo);
			}
		};
		return jdbcTemplate.query(sql, rowMapper);
	}

}
