package springmvcsearch;

public class Address {
	private String house;
	private String city;
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Address [house=" + house + ", city=" + city + "]";
	}
	public Address(String house, String city) {
		super();
		this.house = house;
		this.city = city;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	
}
