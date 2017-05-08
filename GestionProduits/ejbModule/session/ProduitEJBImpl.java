package session;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import metier.Produit;

/**
 * Session Bean implementation class ProduitEJBImpl
 */
@Stateless
public class ProduitEJBImpl implements ProduitRemote, ProduitLocal {

	@PersistenceContext(name = "ejb-pu")
	private EntityManager em;

	/**
	 * Default constructor.
	 */

	public ProduitEJBImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int ajouterProduit(Produit p) {
		em.persist(p);
		return p.getId();
	}

	@Override
	public Produit modifierProduit(Produit p) {
		em.merge(p);
		return p;
	}

	@Override
	public void supprimerProduit(Produit p) {
		em.remove(em.contains(p)? p : em.merge(p));
	}

	@Override
	public Produit getProduit(int idProduit) {
		Produit p = em.find(Produit.class, idProduit);
		return p;
	}

	@Override
	public List<Produit> findAllProduits() {
		return em.createQuery("SELECT p FROM Produit p").getResultList();
	}

}
