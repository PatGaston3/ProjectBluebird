package test;

import static org.junit.Assert.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import entities.User;

public class UserTest {
	   private EntityManagerFactory emf;
	   private EntityManager em;

	@Before
	public void setUp() throws Exception {
	        emf = Persistence.
	            createEntityManagerFactory("BluebirdJPA");
	        em = emf.createEntityManager();
	}

	@Test
	public void test() throws Exception {
		User user = em.find(User.class, 1);
		
		assertEquals(1, user.getId());
		assertEquals("pgaston", user.getUsername());

	}

	@After
	public void tearDown() {
		   em.close();
	        emf.close();	}


}
