package vos;

public class Food {
	private String label;
	private String price;
	private String areaName;
	private String routeName;
	private String direction;

	public Food() {
	}

	public Food(String label, String price, String areaName, String routeName, String direction) {
		super();
		this.label = label;
		this.price = price;
		this.areaName = areaName;
		this.routeName = routeName;
		this.direction = direction;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	@Override
	public String toString() {
		return "Food [label=" + label + ", price=" + price + ", areaName=" + areaName + ", routeName=" + routeName
				+ ", direction=" + direction + "]";
	}

}
