package Model;

public class Collection {
    private int collectionId;
    private String collectionName;
    private boolean status;
    private String description;

    public Collection() {
    }

    public Collection(int collectionId, String collectionName, boolean status, String description) {
        this.collectionId = collectionId;
        this.collectionName = collectionName;
        this.status = status;
        this.description = description;
    }

    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

    public String getCollectionName() {
        return collectionName;
    }

    public void setCollectionName(String collectionName) {
        this.collectionName = collectionName;
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

    public void setDescription(String description) {
        this.description = description;
    }
}
