package Model;

public class BestSeller {

    private Product product;
    private boolean status;
    private String description;

    public BestSeller() {
    }

    public BestSeller(Product product, boolean status, String Description) {
        this.product = product;
        this.status = status;
        this.description = Description;
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
