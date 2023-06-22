package Model;

public class Product_Tag {
    private Product product;
    private Tag tag;
    private boolean deleteFlag;

    public Product_Tag() {
    }

    public Product_Tag(Product product, Tag tag, boolean deleteFlag) {
        this.product = product;
        this.tag = tag;
        this.deleteFlag = deleteFlag;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Tag getTag() {
        return tag;
    }

    public void setTag(Tag tag) {
        this.tag = tag;
    }

    public boolean isDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(boolean deleteFlag) {
        this.deleteFlag = deleteFlag;
    }
}
