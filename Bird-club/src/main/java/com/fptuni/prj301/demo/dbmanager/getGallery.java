
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Image;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class getGallery {
    public List<Image> loadGallery() {
        String sql = "SELECT URL FROM [GalleryImage]";
        List<Image> gallery = new ArrayList<>();  
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {              
                Image image = new Image();
                image.setUrl(rs.getString("URL"));
                gallery.add(image);
            }
        } catch (Exception ex) {
        }
        return gallery;
    }
   
}
