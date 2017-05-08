package ejb;

import javax.ejb.Remote;

@Remote
public interface CalculatriceRemote {
	public int addition(int x, int y);
	public int soustraction(int x, int y);
	public int division(int x, int y);

}
