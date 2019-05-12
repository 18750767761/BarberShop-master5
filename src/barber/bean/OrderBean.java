package barber.bean;

import javax.xml.crypto.Data;
import java.sql.Time;
import java.sql.Timestamp;

public class OrderBean {
    private Long Oid;
    private Long Uid;
    private Long Bid;
    private Long Hid;
    private Timestamp Stime;
    private int Sprice;
    private int Scondition;

    public int getScondition() {
        return Scondition;
    }

    public void setScondition(int scondition) {
        Scondition = scondition;
    }

    public Long getHid() {
        return Hid;
    }

    public void setHid(Long hid) {
        Hid = hid;
    }

    public Long getOid() {
        return Oid;
    }

    public void setOid(Long sid) {
        Oid = sid;
    }

    public Long getUid() {
        return Uid;
    }

    public void setUid(Long uid) {
        Uid = uid;
    }

    public Long getBid() {
        return Bid;
    }

    public void setBid(Long bid) {
        Bid = bid;
    }

    public Timestamp getStime() {
        return Stime;
    }

    public void setStime(Timestamp stime) {
        Stime = stime;
    }

    public int getSprice() {
        return Sprice;
    }

    public void setSprice(int sprice) {
        Sprice = sprice;
    }
}
