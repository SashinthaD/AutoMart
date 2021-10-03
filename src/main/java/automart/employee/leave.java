package automart.employee;

public class leave {
	
	private int sick;
	private int casual;
	private String nic;
	
	public leave(String nic, int sick, int casual) {
		super();
		this.sick = sick;
		this.casual = casual;
		this.nic = nic;
	}

	public int getSick() {
		return sick;
	}

	public int getCasual() {
		return casual;
	}

	public String getNic() {
		return nic;
	}
}
