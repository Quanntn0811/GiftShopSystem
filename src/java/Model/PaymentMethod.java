package Model;

public class PaymentMethod {
    private int paymentId;
    private String paymentMethod;
    private boolean status;

    public PaymentMethod() {
    }

    public PaymentMethod(int paymentId, String paymentMethod, boolean status) {
        this.paymentId = paymentId;
        this.paymentMethod = paymentMethod;
        this.status = status;
    }

    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
