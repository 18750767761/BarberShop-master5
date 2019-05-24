package barber.bean;

import java.sql.Timestamp;

public class NoticesBean {
    private Long Nid;
    private String Ntitle;
    private String Ntext;
    private Timestamp Ntime;

    public Long getNid() {
        return Nid;
    }

    public void setNid(Long nid) {
        Nid = nid;
    }

    public String getNtitle() {
        return Ntitle;
    }

    public void setNtitle(String ntitle) {
        Ntitle = ntitle;
    }

    public String getNtext() {
        return Ntext;
    }

    public void setNtext(String ntext) {
        Ntext = ntext;
    }

    public Timestamp getNtime() {
        return Ntime;
    }

    public void setNtime(Timestamp ntime) {
        Ntime = ntime;
    }
}
