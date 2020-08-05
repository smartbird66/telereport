package cn.com.dhc.telereport.pojo;

import org.springframework.web.multipart.MultipartFile;

public class User {
    private String username;
    private String password;
    private MultipartFile image;
    private String imageLu;
    private String note;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public String getImageLu() {
        return imageLu;
    }

    public void setImageLu(String imageLu) {
        this.imageLu = imageLu;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", image=" + image +
                ", imageLu='" + imageLu + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
