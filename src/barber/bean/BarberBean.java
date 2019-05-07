package barber.bean;

public class BarberBean {
    private Long Bid;
    private String Bname;
    private String Bcondition;


    public Long getBid() {
        return Bid;
    }

    public void setBid(Long bid) {
        Bid = bid;
    }

    public String getBname() {
        return Bname;
    }

    public void setBname(String bname) {
        Bname = bname;
    }

    public String getBcondition() {
        return Bcondition;
    }

    public void setBcondition(String bcondition) {
        Bcondition = bcondition;
    }
}
