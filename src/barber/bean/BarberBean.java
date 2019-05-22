package barber.bean;

public class BarberBean {
    private Long Bid;
    private String Bname;
    private int Bcondition;
    private String Bpic;
    private String Bcommons;
    private String Bpassword;

    public String getBpassword() {
        return Bpassword;
    }

    public void setBpassword(String bpassword) {
        Bpassword = bpassword;
    }

    public String getBpic() {
        return Bpic;
    }

    public void setBpic(String bpic) {
        Bpic = bpic;
    }

    public String getBcommons() {
        return Bcommons;
    }

    public void setBcommons(String bcommons) {
        Bcommons = bcommons;
    }

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

    public int getBcondition() {
        return Bcondition;
    }

    public void setBcondition(int bcondition) {
        Bcondition = bcondition;
    }
}
