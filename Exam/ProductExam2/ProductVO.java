package vo;

public class ProductVO {
	private int apple;	
	private int banana;	
	private int orange;
	
	public ProductVO() {
		apple = 0;
		banana = 0;
		orange = 0;
	}
	public int getApple() {
		return apple;
	}
	public void setApple(int apple) {
		this.apple+=1;
	}
	public int getBanana() {
		return banana;
	}
	public void setBanana(int banana) {
		this.banana+=1;
	}
	public int getOrange() {
		return orange;
	}
	public void setOrange(int orange) {
		this.orange+=1;
	}	
	
}
