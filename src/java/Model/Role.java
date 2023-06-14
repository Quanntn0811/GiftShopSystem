package Model;

public class Role {
    private int id;
    private String name;
    private boolean deleteFlag;

    public Role(int id, String name, boolean deleteFlag) {
        this.id = id;
        this.name = name;
        this.deleteFlag = deleteFlag;
    }

    public Role() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(boolean deleteFlag) {
        this.deleteFlag = deleteFlag;
    }
}
