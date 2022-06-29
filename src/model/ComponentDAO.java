package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import controller.Main;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;


public class ComponentDAO {		//데이터베이스 연동

	private static Connection conn;
	private static ResultSet rs;

	
	public void setMain(Main main) {
	}
	
	public ComponentDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bg","bg");	//sql과 데이터 연동
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public ObservableList<Component> getComponentList(){
		String SQL = "SELECT * FROM dog_master";	// 테이블 연동
		ObservableList<Component> componentList = FXCollections.observableArrayList();	//arraylist: 배열리스트
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();	
			while (rs.next()) {
				Component component = new Component(rs.getString("classify"),rs.getString("dog_code"), 
						rs.getInt("com_count"), rs.getString("com_place"));
				componentList.add(component);	//데이터 불러오기 -> 컴포넌트 배열 리스트에 추가
			}
			pstmt.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return componentList;		//값을 반환하여 리스트 만들기
	}
	
	public int saveComponentList(ObservableList<Component> componentList) {
		if(deleteComponentList() == -1) {	//-1일때와 1일때의 결과값 Main.java 참고	
			return -1;					
		}
		if (insertComponentList(componentList) == -1) {  //-1일때와 1일때의 결과값 Main.java 참고	
			return -1;
		}
		return 1;
	}
	
	int deleteComponentList() {

		try {
			
			String SQL = "DELETE FROM dog_master";
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.executeQuery();
			pstmt.close();
			return 1;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return -1;
		}
	}
	
	int insertComponentList(ObservableList<Component> componentList) {
		
		try {
			
			System.out.println(componentList.size());
			String SQL = "INSERT INTO dog_master";			
			SQL += "(dog_code,classify,com_count,com_place)";
			SQL += " VALUES(?,?,?,?)";
				
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			for (Component component : componentList) {
			String code = component.getComponentCode();
			String name = component.getComponentName();
			int count = component.getComponentCount();
			String location = component.getComponentPlace();
				
			pstmt.setString(1, code);
			pstmt.setString(2, name);
			pstmt.setInt(3, count);
			pstmt.setString(4, location);
			pstmt.executeUpdate();
			
			}
			pstmt.close();

			return 1;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return -1;
		}
	}
}