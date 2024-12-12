package place_order.model;

public class Order {

	private int id;
    private String name;
    private String phoneNo;
    private String shirts;
    private String pants;
    private String jeans;
    private String towels;
    private String mundu;
    private String bedSheet;
    private String shorts;
    private String washing;
    private String ironing;
    private String totalAmount;
    private String uname;

    // Default constructor
    public Order() {
    }

    // Overloaded constructor with all fields
    public Order(int id, String name, String phoneNo, String shirts, String pants, String jeans, 
                 String towels, String mundu, String bedSheet, String shorts, String washing, 
                 String ironing, String totalAmount, String uname) {
        this.id = id;
        this.name = name;
        this.phoneNo = phoneNo;
        this.shirts = shirts;
        this.pants = pants;
        this.jeans = jeans;
        this.towels = towels;
        this.mundu = mundu;
        this.bedSheet = bedSheet;
        this.shorts = shorts;
        this.washing = washing;
        this.ironing = ironing;
        this.totalAmount = totalAmount;
        this.uname = uname;
    }


    // Getters (No setters as requested)
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public String getShirts() {
        return shirts;
    }

    public String getPants() {
        return pants;
    }

    public String getJeans() {
        return jeans;
    }

    public String getTowels() {
        return towels;
    }

    public String getMundu() {
        return mundu;
    }

    public String getBedSheet() {
        return bedSheet;
    }

    public String getShorts() {
        return shorts;
    }

    public String getWashing() {
        return washing;
    }

    public String getIroning() {
        return ironing;
    }

    public String getTotalAmount() {
        return totalAmount;
    }
    
    public String getUname() {
    	
    	return uname;
    }
}
