package Model;

public class Product_Collection {
    private Product product;
    private Collection collection;
    private boolean deleteFlag;

    public Product_Collection() {
    }

    public Product_Collection(Product product, Collection collection, boolean deleteFlag) {
        this.product = product;
        this.collection = collection;
        this.deleteFlag = deleteFlag;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Collection getCollection() {
        return collection;
    }

    public void setCollection(Collection collection) {
        this.collection = collection;
    }

    public boolean isDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(boolean deleteFlag) {
        this.deleteFlag = deleteFlag;
    }
}
