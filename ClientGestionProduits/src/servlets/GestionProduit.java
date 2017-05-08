package servlets;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Produit;
import session.ProduitLocal;

/**
 * Servlet implementation class GestionProduit
 */
@WebServlet("/GestionProduit")
public class GestionProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private ProduitLocal produitLocal;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionProduit() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("ajouter")!=null){
			Produit p = new Produit();
			String nom = request.getParameter("nom");
			int quantite = Integer.parseInt(request.getParameter("quantite"));
			double prix = Double.parseDouble(request.getParameter("prix"));
			p.setNom(nom);
			p.setPrix(prix);
			p.setQuantite(quantite);
			produitLocal.ajouterProduit(p);
		}
		
		if(request.getParameter("modifier")!=null && !request.getParameter("id").equals("")){
			Produit p = produitLocal.getProduit(Integer.parseInt(request.getParameter("id")));
			String nom = request.getParameter("nom");
			int quantite = Integer.parseInt(request.getParameter("quantite"));
			double prix = Double.parseDouble(request.getParameter("prix"));
			p.setNom(nom);
			p.setPrix(prix);
			p.setQuantite(quantite);
			produitLocal.modifierProduit(p);
		}
		
		if(request.getParameter("supprimer")!=null && !request.getParameter("id").equals("")){
			produitLocal.supprimerProduit(produitLocal.getProduit(Integer.parseInt(request.getParameter("id"))));
		}		
		
		request.setAttribute("produits", produitLocal.findAllProduits());
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
