package Model;

public class ImageProduct {
    private int productID;
    private String image;
    private boolean deleteFlag;

    public ImageProduct() {
    }

    public ImageProduct(int productID, String image, boolean deleteFlag) {
        this.productID = productID;
        this.image = image;
        this.deleteFlag = deleteFlag;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(boolean deleteFlag) {
        this.deleteFlag = deleteFlag;
    }
    
}
