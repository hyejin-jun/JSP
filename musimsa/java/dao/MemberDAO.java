package dao;
import java.sql.*;
import java.util.*;

import javax.xml.crypto.Data;

import dto.MemberDTO;

public class MemberDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public MemberDAO() {
        try {
            // DB 연결 (예: MySQL)
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/yourDB", "user", "password");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    private int id; 		    //고유 사용자 번호
	private String username;			//아이디 (중복 방지)
	private String  password; 	    //비밀번호
	private String email;			//이메일
	private String address; 	//주소
	private String phone;	    //전화번호
	private String gender; 		//성별
	private Data   reg_date; 	//가입일
	
    
    // CREATE
    public int insertMember(MemberDTO member) {
        String sql = "INSERT INTO members(id, username, password, email, address, phone, gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, member.getNum());
            pstmt.setString(2, member.getId());
            pstmt.setString(3, member.getName());
            pstmt.setString(3, member.getPassword());
            pstmt.setString(4, member.getEmail());
            pstmt.setString(5, member.getAddress());
            pstmt.setString(6, member.getPhone());
            pstmt.setString(7, member.getGender());
            java.sql.Date sqlDate = new java.sql.Date(member.getReg_date().getTime());
            pstmt.setDate(8, sqlDate);
            return pstmt.executeUpdate(); // 성공하면 1
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0; // 실패
    }

    // READ (전체)
    public List<MemberDTO> getAllMembers() {
        List<MemberDTO> list = new ArrayList<>();
        String sql = "SELECT * FROM members";
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                MemberDTO m = new MemberDTO();
                m.setNum(rs.getInt("num"));
                m.setName(rs.getString("name"));
                m.setId(rs.getString("id"));
                m.setPassword(rs.getString("password"));
                m.setEmail(rs.getString("email"));
                m.setAddress(rs.getString("address"));
                m.setPhone(rs.getString("phone"));
                m.setGender(rs.getString("gender"));
                m.getReg_date();
                list.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // READ (단건)
    public MemberDTO getMemberById(String id) {
        String sql = "SELECT * FROM members WHERE id = ?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                MemberDTO m = new MemberDTO();
                m.setNum(rs.getInt("num"));
                m.setName(rs.getString("name"));
                m.setId(rs.getString("id"));
                m.setPassword(rs.getString("password"));
                m.setEmail(rs.getString("email"));
                m.setAddress(rs.getString("address"));
                m.setPhone(rs.getString("phone"));
                m.setGender(rs.getString("gender"));
                m.getReg_date();
                return m;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // UPDATE
    public int updateMember(MemberDTO member) {
        String sql = "UPDATE members SET name=?, password=?, email=? WHERE id=?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, member.getNum());
            pstmt.setString(2, member.getId());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getPassword());
            pstmt.setString(5, member.getEmail());
            pstmt.setString(6, member.getAddress());
            pstmt.setString(7, member.getPhone());
            pstmt.setString(8, member.getGender());
            java.sql.Date sqlDate = new java.sql.Date(member.getReg_date().getTime());
            pstmt.setDate(8, sqlDate);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    // DELETE
    public int deleteMember(String id) {
        String sql = "DELETE FROM members WHERE id=?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    // 자원 해제
    public void close() {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
