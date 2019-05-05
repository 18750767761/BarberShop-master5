package barber.bean;

public class UserBean {
    private Integer Uid;
    private String Upassword;
    private String Uname;
    private Integer Uage;
    private Long Utel;
    private Integer Uscore;
    private String Upic;

    public String getUpassword() {
        return Upassword;
    }

    public void setUpassword(String upassword) {
        Upassword = upassword;
    }

    public Integer getUid() {
        return Uid;
    }

    public void setUid(Integer uid) {
        Uid = uid;
    }

    public String getUname() {
        return Uname;
    }

    public void setUname(String uname) {
        Uname = uname;
    }

    public Integer getUage() {
        return Uage;
    }

    public void setUage(Integer uage) {
        Uage = uage;
    }

    public Long getUtel() {
        return Utel;
    }

    public void setUtel(Long utel) {
        Utel = utel;
    }

    public Integer getUscore(int uscore) {
        return Uscore;
    }

    public void setUscore(Integer uscore) {
        Uscore = uscore;
    }

    public String getUpic() {
        return Upic;
    }

    public void setUpic(String upic) {
        Upic = upic;
    }
}
