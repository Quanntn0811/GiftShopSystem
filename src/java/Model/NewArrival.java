package Model;

public class NewArrival {

    private Product product;
    private boolean status;
    private String description;

    public NewArrival() {
    }

    public NewArrival(Product product, boolean status, String description) {
        this.product = product;
        this.status = status;
        this.description = description;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String Description) {
        this.description = Description;
    }
}
