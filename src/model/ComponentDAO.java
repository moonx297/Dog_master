package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import controller.Main;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;


public class ComponentDAO {

	private static Connection conn;
	private static ResultSet rs;

	
	public void setMain(Main main) {
	}
	
	public ComponentDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bg","bg");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public ObservableList<Component> getComponentList(){
		
		String SQL = "SELECT * FROM dog_master";
		ObservableList<Component> componentList = FXCollections.observableArrayList();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				Component component = new Component(rs.getString("classify"),rs.getString("age"), rs.getInt("com_count"), rs.getString("com_place"));
				componentList.add(component);
			}
			
			pstmt.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return componentList;
	}
	
	public int saveComponentList(ObservableList<Component> componentList) {
		if(deleteComponentList() == -1) {
			return -1;
		}
		if (insertComponentList(componentList) == -1) {
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
			SQL += "(age,classify,com_count,com_place)";
			SQL += " VALUES(?,?,?,?)";
				
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			for (Component component : componentList) {
			String age = component.getComponentAge();
			String name = component.getComponentName();
			int count = component.getComponentCount();
			String location = component.getComponentPlace();
				
			pstmt.setString(1, age);
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
