package ejb;

import javax.ejb.Local;

@Local
public interface CalculatriceLocal {
	
	public int addition(int x, int y);
	public int soustraction(int x, int y);
	public int division(int x, int y);
	public int multiplication(int x, int y);
	
}
